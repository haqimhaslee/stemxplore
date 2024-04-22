import 'package:stemxplore/chatbot/chat_input_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs.dart';

class SectionChat extends StatefulWidget {
  const SectionChat({super.key});

  @override
  State<SectionChat> createState() => _SectionChatState();
}

class _SectionChatState extends State<SectionChat> {
  int currentChatIndex = 0; // Counter to track the current chat index
  final controller = TextEditingController();
  final gemini = Gemini.instance;

  bool _loading = false;

  bool get loading => _loading;

  set loading(bool set) => setState(() => _loading = set);
  final List<Content> chats = [];
  bool showPredefinedData = false;

  @override
  void initState() {
    super.initState();

    // Add predefined data only if the flag is true
    chats.add(Content(role: 'user', parts: [
      Parts(
          text:
              'You are STEMXplore, custom AI chatbot for STEM (Science Technology Engineering Mathematics) education')
    ]));
    chats.add(Content(role: 'model', parts: [
      Parts(
          text:
              'Sure, I am STEMXplore, a custom AI chatbot for STEM purposes. I am here to help you with any questions or inquiries you may have about STEM.')
    ]));

    // Add more predefined data as needed
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AI Chatbot'),
          elevation: 3,
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
                child: chats.isNotEmpty
                    ? Align(
                        alignment: Alignment.bottomCenter,
                        child: SingleChildScrollView(
                          reverse: true,
                          child: ListView.builder(
                            itemBuilder: chatItem,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: chats.length,
                            reverse: false,
                          ),
                        ),
                      )
                    : const Center(child: Text('Ask STEMXPLORE anything'))),
            if (loading)
              Row(
                children: [
                  Expanded(
                    child: Card(
                      elevation: 0,
                      // color: Theme.of(context).colorScheme.secondaryContainer,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const SizedBox(
                              height: 8,
                            ),
                            SizedBox(
                              //height: 15,
                              child: LoadingAnimationWidget.staggeredDotsWave(
                                color: Theme.of(context).colorScheme.primary,
                                size: 35,
                              ),
                            ),
                            const Text('Generating answer'),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ChatInputBox(
              controller: controller,
              onSend: () {
                if (controller.text.isNotEmpty) {
                  final searchedText = controller.text;
                  chats.add(Content(
                      role: 'user', parts: [Parts(text: searchedText)]));
                  controller.clear();
                  loading = true;

                  gemini.chat(chats).then((value) {
                    chats.add(Content(
                        role: 'model', parts: [Parts(text: value?.output)]));
                    loading = false;
                  });
                }
              },
            ),
          ],
        ));
  }

  Widget chatItem(BuildContext context, int index) {
    final Content content = chats[index];
    if (index >= 2) {
      void onLinkTap(String url) async {
        try {
          launch(
            url,
            customTabsOption: CustomTabsOption(
              toolbarColor: Theme.of(context).colorScheme.background,
              showPageTitle: true,
              //enableDefaultShare: false
            ),
            safariVCOption: const SafariViewControllerOption(
              preferredBarTintColor: Colors.blue,
              preferredControlTintColor: Colors.white,
              barCollapsingEnabled: true,
              entersReaderIfAvailable: true,
              dismissButtonStyle: SafariViewControllerDismissButtonStyle.close,
            ),
          );
        } catch (e) {
          debugPrint(e.toString());
        }
      }

      return Card(
        elevation: 0,
        color: content.role == 'model'
            ? Theme.of(context).colorScheme.surface
            : Theme.of(context).colorScheme.surfaceVariant,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: content.role == 'model'
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: content.role == 'model'
                    ? MainAxisAlignment.start
                    : MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10, left: 2),
                    child: SizedBox(
                      child: Column(
                        mainAxisAlignment: content.role == 'model'
                            ? MainAxisAlignment.start
                            : MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 10,
                            backgroundImage: AssetImage(content.role == 'model'
                                ? "assets/utp-single-logo.png"
                                : "assets/profile_pic.png"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(content.role == 'model' ? 'STEMXplore' : "User",
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      )),
                ],
              ),
              Markdown(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  onTapLink: (String text, String? href, String title) {
                    onLinkTap(href!);
                  },
                  data: content.parts?.lastOrNull?.text ??
                      'Cannot generate data! Visit https://deepmind.google/technologies/gemini/#introduction to learn more'),
            ],
          ),
        ),
      );
    }
    return Container();
  }
}
