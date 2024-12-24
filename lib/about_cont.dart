import 'package:flutter/material.dart';
import 'link_text_w.dart';

  aboutContainerWidget(BuildContext context, String contSize, Size ss, ) {
    double about_cont_lg_padding = 0.0;
    double about_cont_lg_desc_txt = 0.0;
    double about_cont_lg_cont_size = 0.0;
    double about_cont_lg_title_txt = 0.0;
    if (contSize == "large") {
      about_cont_lg_padding = ss.width * .04;
      about_cont_lg_desc_txt = ss.width * .015;
      about_cont_lg_cont_size = ss.width * .55;
      about_cont_lg_title_txt = ss.width * .02;
    }
    if (contSize == "small") {
      about_cont_lg_padding = ss.width * .05;
      about_cont_lg_desc_txt = ss.width * .03;
      about_cont_lg_cont_size = ss.width * .88;
      about_cont_lg_title_txt = ss.width * .035;
    }
    return Container(
        padding: EdgeInsets.all(about_cont_lg_padding),
        height: ss.height,
        color: Theme
            .of(context)
            .canvasColor,
        child:
        Container(
            color: Theme
                .of(context)
                .scaffoldBackgroundColor,
            padding: EdgeInsets.symmetric(horizontal: about_cont_lg_desc_txt),
            child: ListView(
              // mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: about_cont_lg_padding),
                      child: Container(
                          width: about_cont_lg_cont_size,
                          padding: EdgeInsets.only(
                              top: about_cont_lg_title_txt / 2),
                          child: Text(
                              "",
                              style: TextStyle(
                                  fontSize: about_cont_lg_title_txt)))),

                  Padding(
                      padding: EdgeInsets.only(top: about_cont_lg_padding),
                      child: Container(
                          width: about_cont_lg_cont_size,
                          padding: EdgeInsets.only(
                              top: about_cont_lg_title_txt / 2),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(width: 1, color: Theme
                                      .of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color!))
                          ),
                          child: Text("# About Me",
                              style: TextStyle(
                                  fontSize: about_cont_lg_title_txt)))),


                  Padding(
                      padding: EdgeInsets.only(top: about_cont_lg_padding / 2),
                      child:
                      Column(children: [
                        Container(
                          padding: EdgeInsets.only(
                              top: about_cont_lg_padding / 6),
                          width: about_cont_lg_cont_size * .9,
                          child:
                          Text("• Age - 32"),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              top: about_cont_lg_padding / 6),
                          width: about_cont_lg_cont_size * .9,
                          child:
                          Text("• Location - Orange County, California"),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              top: about_cont_lg_padding / 6),
                          width: about_cont_lg_cont_size * .9,
                          child:
                          Text("• Email - ryanadrig@gmail.com"),
                        ),
//               Container(
//                 padding: EdgeInsets.only(top:about_cont_lg_padding /6),
//                 width: about_cont_lg_cont_size * .9,
//                 child:
//                 Text("• Education - Physics, University of California San Diego"),
//               ),
                        Container(
                          padding: EdgeInsets.only(
                              top: about_cont_lg_padding / 6),
                          width: about_cont_lg_cont_size * .9,
                          child:
                          Text("• Freelance/Contract - Available "),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              top: about_cont_lg_padding / 6),
                          width: about_cont_lg_cont_size * .9,
                          child:
                          Text("• Job Offer - Available "),
                        )
                      ])
                  ),


                  Padding(
                      padding: EdgeInsets.only(top: about_cont_lg_padding),
                      child: Container(
                          width: about_cont_lg_cont_size,
                          padding: EdgeInsets.only(
                              top: about_cont_lg_title_txt / 2),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(width: 1, color: Theme
                                      .of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color!))
                          ),
                          child: Text("# Development Experience",
                              style: TextStyle(
                                  fontSize: about_cont_lg_title_txt)))),
                  Padding(
                      padding: EdgeInsets.only(top: about_cont_lg_padding / 2),
                      child:
                      Column(children: [
                        Container(
                          width: about_cont_lg_cont_size * .9,
                          child:
                          Text("•   Web Dev and Wordpress - 4 years"),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: about_cont_lg_padding),
                          width: about_cont_lg_cont_size * .8,
                          child:
                          Text("""
                 I have worked with JS/HTML and Wordpress, standard web dev building webpages. This was my first introduction to concepts of Single Page Apps, Hosting, Git, Responsivity and Reactivity, Database integration, Cloud services and Build Pipelines and Deployment.
                """,
                            style: TextStyle(height: 1.6),
                          ),
                        ),
                        Container(
                          width: about_cont_lg_cont_size * .9,
                          child:
                          Text("•   Mobile App Development (8 years)"),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: about_cont_lg_padding),
                          width: about_cont_lg_cont_size * .8,
                          child:
                          Text("""
                 While working with the web ecosystem, I found Flutter for hybrid mobile app development, and thought it was an amazing technology. With each iteration of the engine and the enormous community adoption I think Flutter has a huge part to play in the future of Front End and UI software.
                  """,
                            style: TextStyle(height: 1.6),
                          ),
                        ),
                        Container(
                          width: about_cont_lg_cont_size * .9,
                          child:
                          Text("•   Everything Else"),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: about_cont_lg_padding),
                          width: about_cont_lg_cont_size * .8,
                          child:
                          Text("""
                   I have also worked with exciting new tech along the way, including Machine Learning platforms like Tensorflow, making a tool to measure items with a phone camera, integrating with Google's cutting edge Vertex AI, and implementing a Neural Net for predicting insurance costs in the US. I've  scripted CICD pipelines with Ruby, used Bash to create productivity tools such as directory auto reloading, and used Unix OS packages on Linux such as Ffmpeg and Debootstrap to... do what you might expect from those packages. I prefer command line apps and TUIs to GUIs and I prefer FOSS over Enterprise, although I am also happy to employ a commercial service when needed such as AWS or GCP, Hosting providers and Cloud storage solutions.
                    """,
                            style: TextStyle(height: 1.6),
                          ),
                        ),
                      ])),

                  Padding(
                      padding: EdgeInsets.only(top: about_cont_lg_padding),
                      child: Container(
                          width: about_cont_lg_cont_size,
                          padding: EdgeInsets.only(
                              top: about_cont_lg_title_txt / 2),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(width: 1, color: Theme
                                      .of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color!))
                          ),
                          child: Text("# Flutter Section",
                              style: TextStyle(
                                  fontSize: about_cont_lg_title_txt)))),


                  Padding(
                      padding: EdgeInsets.only(top: about_cont_lg_padding / 2),
                      child: Container(
                          width: about_cont_lg_cont_size,
                          child:
                          Column(
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: about_cont_lg_padding,
                                        bottom: about_cont_lg_padding / 3),
                                    child: Container(
                                        width: about_cont_lg_cont_size,
                                        padding: EdgeInsets.only(
                                            top: about_cont_lg_title_txt / 2),
                                        child: Text("Packages I use the most",
                                            style: TextStyle(
                                                fontSize: about_cont_lg_title_txt *
                                                    .9)))),
                                Container(
                                    padding: EdgeInsets.only(
                                        top: about_cont_lg_padding / 6),
                                    width: about_cont_lg_cont_size * .9,
                                    child: Wrap(children: [
                                      Text(
                                          "• State Management/ Dependency Injection - "),
                                      LinkTextW(text: "riverpod",
                                          uri: "https://pub.dev/packages/riverpod"),
                                      Text(" / "),
                                      LinkTextW(text: "provider",
                                          uri: "https://pub.dev/packages/provider"),
                                      Text(" / "),
                                      LinkTextW(text: "InheritedWidget",
                                          uri: "https://api.flutter.dev/flutter/widgets/InheritedWidget-class.html"),
                                    ])
                                ),
                                Container(
                                    padding: EdgeInsets.only(
                                        top: about_cont_lg_padding / 6),
                                    width: about_cont_lg_cont_size * .9,
                                    child:
                                    Row(children: [
                                      Text("• Navigation - "),
                                  // LinkTextW(text: "vanilla", uri: "https://docs.flutter.dev/ui/navigation"),
//                                   Text(" / "),
                                      LinkTextW(text: " go_router",
                                          uri: "https://pub.dev/packages/go_router"),
                                    ])
                                ),
                                Container(
                                    padding: EdgeInsets.only(
                                        top: about_cont_lg_padding / 6),
                                    width: about_cont_lg_cont_size * .9,
                                    child:
                                    Row(children: [
                                      Text("• Localization - "),
                                      LinkTextW(text: "i18n",
                                          uri: "https://pub.dev/packages/flutter_i18n"),
                                      Text(" / "),
                                      LinkTextW(text: "flutter_localizations",
                                          uri: "https://docs.flutter.dev/development/accessibility-and-localization/internationalization"),
                                    ])
                                ),
                                Container(
                                    padding: EdgeInsets.only(
                                        top: about_cont_lg_padding / 6),
                                    width: about_cont_lg_cont_size * .9,
                                    child:
                                    Row(children: [
                                      Text("• HTTP - "),
                                      // LinkTextW(text: "vanilla",
                                      //     uri: "https://pub.dev/packages/http"),
                                      LinkTextW(text: "dio",
                                          uri: "https://pub.dev/packages/dio"),
                                    ])
                                ),
                                Container(
                                    padding: EdgeInsets.only(
                                        top: about_cont_lg_padding / 6),
                                    width: about_cont_lg_cont_size * .9,
                                    child:
                                    Row(children: [
                                      Text("• Local Storage - "),
                                      LinkTextW(text: "hive",
                                          uri: "https://pub.dev/packages/hive"),
                                      Text(" / "),
                                      LinkTextW(text: "shared_preferences",
                                          uri: "https://pub.dev/packages/shared_preferences"),

                                    ])
                                ),
                                Container(
                                    padding: EdgeInsets.only(
                                        top: about_cont_lg_padding / 6),
                                    width: about_cont_lg_cont_size * .9,
                                    child:
                                    Row(children: [
                                      Text("• Object Modeling - "),
                                      LinkTextW(text: "json_serializable",
                                          uri: "https://pub.dev/packages/json_serializable"),
                                      Text(" / "),
                                      LinkTextW(text: "freezed",
                                          uri: "https://pub.dev/packages/freezed"),
                                    ])
                                ),
                                Container(
                                    padding: EdgeInsets.only(
                                        top: about_cont_lg_padding / 6),
                                    width: about_cont_lg_cont_size * .9,
                                    child:
                                    Row(children: [
                                      Text("• Code Analysis - "),
                                      LinkTextW(text: "flutter_lints",
                                          uri: "https://pub.dev/packages/flutter_lints"),
                                      Text(" / "),
                                      LinkTextW(text: "dart_code_metrics",
                                          uri: "https://pub.dev/packages/dart_code_metrics"),
                                    ])
                                ),
                                Container(
                                    padding: EdgeInsets.only(
                                        top: about_cont_lg_padding / 6),
                                    width: about_cont_lg_cont_size * .9,
                                    child:
                                    Row(children: [
                                      Text("• CI/CD - "),
                                      LinkTextW(text: "CodeMagic",
                                          uri: "https://codemagic.io"),
                                      Text(" / "),
                                      LinkTextW(text: "Fastlane",
                                          uri: "https://fastlane.tools/"),
                                    ])
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      top: about_cont_lg_padding),)

                              ]))),


                ])));
  }