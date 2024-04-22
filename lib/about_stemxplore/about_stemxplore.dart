import 'package:flutter/material.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs.dart';

class AboutStemxplore extends StatefulWidget {
  const AboutStemxplore({super.key});

  @override
  State<AboutStemxplore> createState() => _AboutStemxploreState();
}

class _AboutStemxploreState extends State<AboutStemxplore> {
  double lebar = 300;
  @override
  Widget build(BuildContext context) {
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

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 3,
        title: const Text('About STEMXplore'),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                  color: const Color.fromARGB(0, 255, 255, 255),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                            bottom: 8,
                          ),
                          child: Text(
                            "Our Project",
                            style: TextStyle(
                              fontSize: 20,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSecondaryContainer,
                            ),
                          ),
                        ),
                        Wrap(children: [
                          Padding(
                              padding: const EdgeInsets.only(
                                top: 8,
                                left: 15,
                                right: 15,
                                bottom: 15,
                              ),
                              child: Container(
                                width: 400,
                                decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondaryContainer,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                ),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        const Text(" "),
                                        Text(
                                          "About Us",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSecondaryContainer,
                                          ),
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.only(
                                              top: 20,
                                              left: 20,
                                              right: 20,
                                              bottom: 20,
                                            ),
                                            child: Container(
                                              decoration: const BoxDecoration(),
                                              child: Align(
                                                  child: Column(
                                                children: [
                                                  Text(
                                                    "STEMXplore is a project led by 20 Universiti Teknologi PETRONAS (UTP) students to increase scientific comprehension among young pupils at Malaysia's Sekolah Menengah Sains Tapah (SESTA). The initiative's goal is to promote the importance of STEM disciplines and to develop a better future for the next generation. STEM education fosters problem-solving, critical thinking & creativity in pupils.",
                                                    style: TextStyle(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .onSecondaryContainer,
                                                    ),
                                                  ),
                                                ],
                                              )),
                                            )),
                                      ],
                                    )),
                              )),
                          Padding(
                              padding: const EdgeInsets.only(
                                top: 8,
                                left: 15,
                                right: 15,
                                bottom: 15,
                              ),
                              child: Container(
                                width: 400,
                                decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondaryContainer,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                ),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        const Text(" "),
                                        Text(
                                          "Objectives",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSecondaryContainer,
                                          ),
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.only(
                                              top: 20,
                                              left: 20,
                                              right: 20,
                                              bottom: 20,
                                            ),
                                            child: Container(
                                              decoration: const BoxDecoration(),
                                              child: Align(
                                                  child: Column(
                                                children: [
                                                  Text(
                                                    "• To increase awareness among students about the importance and advantages of STEM",
                                                    style: TextStyle(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .onSecondaryContainer,
                                                    ),
                                                  ),
                                                  Text(
                                                    "• To attract students' interest in STEM and ensure that students continue to choose STEM fields when entering  upper secondary.",
                                                    style: TextStyle(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .onSecondaryContainer,
                                                    ),
                                                  ),
                                                  Text(
                                                    "• To emphasize the importance of impating soft skills to students for their personal growth and development",
                                                    style: TextStyle(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .onSecondaryContainer,
                                                    ),
                                                  ),
                                                ],
                                              )),
                                            )),
                                      ],
                                    )),
                              )),
                        ]),
                      ])),
              const Divider(),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  bottom: 8,
                ),
                child: Text(
                  "Our Team",
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 10,
                  right: 10,
                  bottom: 10,
                ),
                child: SizedBox(
                  width: 300,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    child: Material(
                      color: Theme.of(context).colorScheme.surfaceVariant,
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
                                width: MediaQuery.of(context).size.width - 60,
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
                                      child: const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                  top: 20,
                                                  bottom: 20,
                                                ),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(),
                                                          child: Text(
                                                            "Follow our Instagram",
                                                            style: TextStyle(
                                                              fontSize: 17,
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
          ),
        ],
      ),
    );
  }
}
