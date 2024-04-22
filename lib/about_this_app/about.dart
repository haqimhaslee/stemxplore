import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 3,
        title: const Text('About this app'),
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
                            "General Safety",
                            style: TextStyle(
                              fontSize: 20,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSecondaryContainer,
                            ),
                          ),
                        ),
                        Column(children: [
                          Padding(
                              padding: const EdgeInsets.only(
                                top: 8,
                                left: 15,
                                right: 15,
                                bottom: 15,
                              ),
                              child: Container(
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
                                          "DATA PROTECTION",
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
                                                    "Leading technologies including encryption software is used to safeguard any data given to us and strict security standards are maintained to prevent unauthorized access.",
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
                                          "STORAGE SECURITY",
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
                                                    "To safeguard your personal data, all electronic storage and transmission of personal data are secured and stored with appopriate security technologies.",
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
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .colorScheme
                                    .secondaryContainer,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                              ),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      const Text(" "),
                                      Text(
                                        "SECURITY INFORMATION",
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
                                                  "This sites have security measures in place against the loss, misuse and alteration of information.",
                                                  style: TextStyle(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .onSecondaryContainer,
                                                  ),
                                                ),
                                                const Text(''),
                                                Text(
                                                  "A login name and password are required to visit secure areas. This is to ensure that the information is displayed only to the intended person. You should ensure that your password is kept securely and cannot be discovered by anyone else.",
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
                            ),
                          ),
                        ]),
                      ])),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  bottom: 8,
                ),
                child: Text(
                  "AI Usage",
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  left: 15,
                  right: 15,
                  bottom: 15,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          const Text(" "),
                          Text(
                            "Gemini AI",
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
                                      "Gemini AI is a cutting-edge, multimodal artificial intelligence model developed by Google DeepMind. It's considered one of their most advanced AI systems to date, boasting impressive capabilities across various domains.",
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
                      color: Theme.of(context).colorScheme.surfaceVariant,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LicensePage()));
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
                                                            "Licenses",
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
