import 'package:flutter/material.dart';
import 'package:stemxplore/about_stemxplore/about_stemxplore.dart';
import 'package:stemxplore/about_this_app/about.dart';
import 'package:stemxplore/chatbot/utp_assist_v2.dart';
import 'package:stemxplore/src/ui.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs.dart';
import 'package:flutter_gemini/flutter_gemini.dart';

void main() async {
  Gemini.init(apiKey: 'AIzaSyC4xs4B-e9koKeFsrwFRU1Z-XliwaYhgwE');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'STEMXplore',
      theme: ThemeData(
        fontFamily: 'GoogleSans',
        colorScheme: lightColorScheme,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        fontFamily: 'GoogleSans',
        colorScheme: darkColorScheme,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double lebar = 50;

  @override
  Widget build(BuildContext context) {
    void utpWeb() async {
      try {
        launch(
          'https://www.utp.edu.my/',
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

    void socials() async {
      try {
        launch(
          'https://www.instagram.com/stemxplore.utp/',
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

    void sestaWeb() async {
      try {
        launch(
          'https://sesta.edu.my/v1/',
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

    return Scaffold(
        appBar: AppBar(
          elevation: 3,
          //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('STEMXplore'),
          centerTitle: true,
        ),
        body: Align(
            alignment: Alignment.center,
            child: ListView(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                      left: 10,
                      right: 10,
                      bottom: 30,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: ImageSlideshow(
                        indicatorColor: Theme.of(context).colorScheme.primary,
                        indicatorBackgroundColor:
                            Theme.of(context).colorScheme.surfaceVariant,
                        autoPlayInterval: 6000,
                        indicatorRadius: 4,
                        //disableUserScrolling: true,
                        isLoop: true,
                        width: 400,
                        height: (400 / 16) * 9,
                        children: [
                          Image.asset(
                            'assets/carousel/main1.png',
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            'assets/carousel/sesta.png',
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            'assets/carousel/utp.png',
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                    left: 5,
                    right: 5,
                    bottom: 15,
                  ),
                  child: Wrap(
                    spacing: 5,
                    runSpacing: 5,
                    alignment: WrapAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                          left: 10,
                          right: 10,
                          bottom: 2.5,
                        ),
                        child: SizedBox(
                          width: 300,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                            child: Material(
                              color:
                                  Theme.of(context).colorScheme.surfaceVariant,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const AboutStemxplore()));
                                },
                                child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 0,
                                      bottom: 0,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          right: 0, left: 0, top: 0, bottom: 0),
                                      child: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                60,
                                        child: Padding(
                                            padding: const EdgeInsets.only(
                                              top: 0,
                                              left: 0,
                                              right: 0,
                                              bottom: 0,
                                            ),
                                            child: Container(
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(0)),
                                              ),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 20,
                                                          left: 20,
                                                          right: 0,
                                                          bottom: 20,
                                                        ),
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                const BorderRadius
                                                                    .all(
                                                              Radius.circular(
                                                                  15),
                                                            ),
                                                            child: Material(
                                                              color: Theme.of(
                                                                      context)
                                                                  .colorScheme
                                                                  .tertiary,
                                                              child: Icon(
                                                                Icons
                                                                    .diversity_3_rounded,
                                                                color: Theme.of(
                                                                        context)
                                                                    .colorScheme
                                                                    .onTertiary,
                                                              ),
                                                            ),
                                                          ),
                                                        )),
                                                    const Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          top: 20,
                                                          left: 20,
                                                          right: 0,
                                                          bottom: 20,
                                                        ),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .only(),
                                                                  child: Text(
                                                                    "About STEMXplore",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          17,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ))
                                                  ]),
                                            )),
                                      ),
                                    )),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                          left: 10,
                          right: 10,
                          bottom: 2.5,
                        ),
                        child: SizedBox(
                          width: 300,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                            child: Material(
                              color:
                                  Theme.of(context).colorScheme.surfaceVariant,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SectionChat()));
                                },
                                child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 0,
                                      bottom: 0,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          right: 0, left: 0, top: 0, bottom: 0),
                                      child: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                60,
                                        child: Padding(
                                            padding: const EdgeInsets.only(
                                              top: 0,
                                              left: 0,
                                              right: 0,
                                              bottom: 0,
                                            ),
                                            child: Container(
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(0)),
                                              ),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 20,
                                                          left: 20,
                                                          right: 0,
                                                          bottom: 20,
                                                        ),
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                const BorderRadius
                                                                    .all(
                                                              Radius.circular(
                                                                  15),
                                                            ),
                                                            child: Material(
                                                              color: Theme.of(
                                                                      context)
                                                                  .colorScheme
                                                                  .tertiary,
                                                              child: Icon(
                                                                Icons
                                                                    .forum_rounded,
                                                                color: Theme.of(
                                                                        context)
                                                                    .colorScheme
                                                                    .onTertiary,
                                                              ),
                                                            ),
                                                          ),
                                                        )),
                                                    Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 20,
                                                          left: 20,
                                                          right: 0,
                                                          bottom: 20,
                                                        ),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            const Row(
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .only(),
                                                                  child: Text(
                                                                    "STEMXplore Chatbot",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          17,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        left:
                                                                            0),
                                                                child:
                                                                    Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          border: Border.all(
                                                                              color: Theme.of(context).colorScheme.primary,
                                                                              width: 1.5),
                                                                          borderRadius: const BorderRadius
                                                                              .all(
                                                                              Radius.circular(6)),
                                                                        ),
                                                                        child: Padding(
                                                                            padding: const EdgeInsets.only(
                                                                                top: 1,
                                                                                left: 5,
                                                                                right: 5,
                                                                                bottom: 1),
                                                                            child: Text("AI (Artificial Intelligence)", textAlign: TextAlign.center, style: TextStyle(fontSize: 11, fontWeight: FontWeight.w900, color: Theme.of(context).colorScheme.primary))))),
                                                          ],
                                                        ))
                                                  ]),
                                            )),
                                      ),
                                    )),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                          left: 10,
                          right: 10,
                          bottom: 2.5,
                        ),
                        child: SizedBox(
                          width: 300,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                            child: Material(
                              color:
                                  Theme.of(context).colorScheme.surfaceVariant,
                              child: InkWell(
                                onTap: utpWeb,
                                child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 0,
                                      bottom: 0,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          right: 0, left: 0, top: 0, bottom: 0),
                                      child: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                60,
                                        child: Padding(
                                            padding: const EdgeInsets.only(
                                              top: 0,
                                              left: 0,
                                              right: 0,
                                              bottom: 0,
                                            ),
                                            child: Container(
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(0)),
                                              ),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 20,
                                                          left: 20,
                                                          right: 0,
                                                          bottom: 20,
                                                        ),
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                const BorderRadius
                                                                    .all(
                                                              Radius.circular(
                                                                  15),
                                                            ),
                                                            child: Material(
                                                              color: Theme.of(
                                                                      context)
                                                                  .colorScheme
                                                                  .tertiary,
                                                              child: Icon(
                                                                Icons
                                                                    .web_rounded,
                                                                color: Theme.of(
                                                                        context)
                                                                    .colorScheme
                                                                    .onTertiary,
                                                              ),
                                                            ),
                                                          ),
                                                        )),
                                                    const Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          top: 20,
                                                          left: 20,
                                                          right: 0,
                                                          bottom: 20,
                                                        ),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .only(),
                                                                  child: Text(
                                                                    "UTP Website",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          17,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ))
                                                  ]),
                                            )),
                                      ),
                                    )),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                          left: 10,
                          right: 10,
                          bottom: 2.5,
                        ),
                        child: SizedBox(
                          width: 300,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                            child: Material(
                              color:
                                  Theme.of(context).colorScheme.surfaceVariant,
                              child: InkWell(
                                onTap: sestaWeb,
                                child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 0,
                                      bottom: 0,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          right: 0, left: 0, top: 0, bottom: 0),
                                      child: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                60,
                                        child: Padding(
                                            padding: const EdgeInsets.only(
                                              top: 0,
                                              left: 0,
                                              right: 0,
                                              bottom: 0,
                                            ),
                                            child: Container(
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(0)),
                                              ),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 20,
                                                          left: 20,
                                                          right: 0,
                                                          bottom: 20,
                                                        ),
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                const BorderRadius
                                                                    .all(
                                                              Radius.circular(
                                                                  15),
                                                            ),
                                                            child: Material(
                                                              color: Theme.of(
                                                                      context)
                                                                  .colorScheme
                                                                  .tertiary,
                                                              child: Icon(
                                                                Icons
                                                                    .web_rounded,
                                                                color: Theme.of(
                                                                        context)
                                                                    .colorScheme
                                                                    .onTertiary,
                                                              ),
                                                            ),
                                                          ),
                                                        )),
                                                    const Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          top: 20,
                                                          left: 20,
                                                          right: 0,
                                                          bottom: 20,
                                                        ),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .only(),
                                                                  child: Text(
                                                                    "SESTA Website",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          17,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ))
                                                  ]),
                                            )),
                                      ),
                                    )),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                          left: 10,
                          right: 10,
                          bottom: 2.5,
                        ),
                        child: SizedBox(
                          width: 300,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                            child: Material(
                              color:
                                  Theme.of(context).colorScheme.surfaceVariant,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const About()));
                                },
                                child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 0,
                                      bottom: 0,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          right: 0, left: 0, top: 0, bottom: 0),
                                      child: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                60,
                                        child: Padding(
                                            padding: const EdgeInsets.only(
                                              top: 0,
                                              left: 0,
                                              right: 0,
                                              bottom: 0,
                                            ),
                                            child: Container(
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(0)),
                                              ),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 20,
                                                          left: 20,
                                                          right: 0,
                                                          bottom: 20,
                                                        ),
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                const BorderRadius
                                                                    .all(
                                                              Radius.circular(
                                                                  15),
                                                            ),
                                                            child: Material(
                                                              color: Theme.of(
                                                                      context)
                                                                  .colorScheme
                                                                  .tertiary,
                                                              child: Icon(
                                                                Icons
                                                                    .info_rounded,
                                                                color: Theme.of(
                                                                        context)
                                                                    .colorScheme
                                                                    .onTertiary,
                                                              ),
                                                            ),
                                                          ),
                                                        )),
                                                    const Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          top: 20,
                                                          left: 20,
                                                          right: 0,
                                                          bottom: 20,
                                                        ),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .only(),
                                                                  child: Text(
                                                                    "About this app",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          17,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ))
                                                  ]),
                                            )),
                                      ),
                                    )),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                          left: 10,
                          right: 10,
                          bottom: 30,
                        ),
                        child: SizedBox(
                          width: 300,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                            child: Material(
                              color:
                                  Theme.of(context).colorScheme.surfaceVariant,
                              child: InkWell(
                                onTap: socials,
                                child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 0,
                                      bottom: 0,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          right: 0, left: 0, top: 0, bottom: 0),
                                      child: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                60,
                                        child: Padding(
                                            padding: const EdgeInsets.only(
                                              top: 0,
                                              left: 0,
                                              right: 0,
                                              bottom: 0,
                                            ),
                                            child: Container(
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(0)),
                                              ),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 20,
                                                          left: 20,
                                                          right: 0,
                                                          bottom: 20,
                                                        ),
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                const BorderRadius
                                                                    .all(
                                                              Radius.circular(
                                                                  15),
                                                            ),
                                                            child: Material(
                                                              color: Theme.of(
                                                                      context)
                                                                  .colorScheme
                                                                  .tertiary,
                                                              child: Icon(
                                                                Icons
                                                                    .thumbs_up_down_rounded,
                                                                color: Theme.of(
                                                                        context)
                                                                    .colorScheme
                                                                    .onTertiary,
                                                              ),
                                                            ),
                                                          ),
                                                        )),
                                                    const Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          top: 20,
                                                          left: 20,
                                                          right: 0,
                                                          bottom: 20,
                                                        ),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .only(),
                                                                  child: Text(
                                                                    "Visit our Instagram",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          17,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ))
                                                  ]),
                                            )),
                                      ),
                                    )),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ))
            ])));
  }
}
