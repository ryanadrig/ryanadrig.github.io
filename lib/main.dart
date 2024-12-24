import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'link_text_w.dart';
import 'dart:html' as html;
import 'sh_globals.dart';
import 'main_cont_small.dart';
import 'main_cont_wide.dart';
import 'demo_content.dart';
import 'about_cont.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

void main() {
  runApp(SilcloudsHomeApp());
}

class SilcloudsHomeApp extends StatefulWidget {
  const SilcloudsHomeApp({Key? key}) : super(key: key);
  @override
  State<SilcloudsHomeApp> createState() => _SilcloudsHomeAppState();
}

class _SilcloudsHomeAppState extends State<SilcloudsHomeApp> {

ThemeData ctd = ThemeData(
    primarySwatch: Colors.deepPurple,
    cardColor:Colors.white60,
    brightness: Brightness.light);

  ThemeData tdb = ThemeData(
  primarySwatch: Colors.deepPurple,
  cardColor: Colors.white60,
  brightness: Brightness.light);

  ThemeData tdd = ThemeData(
      primarySwatch: Colors.deepPurple,
      cardColor:Colors.black87,
      brightness: Brightness.dark);

  switch_theme(){
    if (ctd.brightness == Brightness.dark){
      setState(() {
        ctd = tdb;
      });
    }
    else if (ctd.brightness == Brightness.light){
      setState(() {
        ctd = tdd;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme:ctd ,
      home: Silclouds_Home(switch_theme: switch_theme,),
    );
  }
}


class Silclouds_Home extends StatefulWidget {
   Silclouds_Home({Key? key,
  required this.switch_theme
  }) : super(key: key);

  Function switch_theme;
  @override
  _Silclouds_HomeState createState() => _Silclouds_HomeState();
}

class _Silclouds_HomeState extends State<Silclouds_Home> {

  bool demo_apps_show = false;
  bool about_show = false;
  String? demo_cont;
  bool theme_switch_status = false;
  String contSize = "small";


  @override
  Widget build(BuildContext context) {
    ss = MediaQuery.of(context).size;
    Color about_bg_color = Theme.of(context).cardColor;
    print("Ss ~ " + ss.toString());

    if (ss.width > 555){
      print("setting large cs");
      contSize = "large";
    }
    if (ss.width < 555){
      print("setting small cs");
      contSize = "small";
    }
    Widget buildSOLC(BuildContext context, String contName){
      print("rebuilding solc");
      if (contName == "NameHead"){
        if (demo_apps_show == false && about_show == false) {
          return Container(
              width: ss.width,
              height: ss.width*.1,
              child: Padding(
                  padding: EdgeInsets.only(right:100),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Portfolio",
                        style: TextStyle(fontSize: ss.width * .025,
                            color: Theme.of(context).textTheme.bodyLarge!.color),),
                      Text(
                        "Flutter Developer and UI/UX Designer",
                        style: TextStyle(fontSize: ss.width * .02,
                            color: Theme.of(context).textTheme.bodyLarge!.color),
                      )
                    ],
                  )));
        }
        else {
          if (demo_apps_show == true && about_show == false &&
              demo_cont != null) {
            return Container(
                width: ss.width,
                height: ss.width * .1,
                child: Center(child: Text(demo_cont_map[demo_cont]["name"],
                    style: TextStyle(
                        color: Theme
                            .of(context)
                            .textTheme
                            .bodyLarge!
                            .color))));
          }
          else {
            return Container();
          }
        }
      }
      if (contName == "lightDarkSwitch" && contSize == "large"){
        return Container(
            width: ss.width,
            height: ss.width*.1,
            child:Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                FlutterSwitch(
                  width: 100.0,
                  height: 55.0,
                  toggleSize: 45.0,
                  value: theme_switch_status,
                  borderRadius: 30.0,
                  padding: 2.0,
                  activeToggleColor: Colors.blueGrey[700],
                  inactiveToggleColor: Colors.white,
                  activeSwitchBorder: Border.all(
                    color: Colors.blueGrey[900]!,
                    width: 6.0,
                  ),
                  inactiveSwitchBorder: Border.all(
                    color: Colors.white60,
                    width: 6.0,
                  ),
                  activeColor: Colors.black54,
                  inactiveColor: Colors.white60,
                  activeIcon: Image.asset(
                    width:45.0,
                    height:45.0,
                    "assets/images/light_theme_icon_transbg.png",
                  ),
                  inactiveIcon: Image.asset(
                    width:45.0,
                    height:45.0,
                    "assets/images/dark_theme_icon_transbg.png",
                  ),
                  onToggle: (val) {
                    widget.switch_theme();
                    setState(() {
                      theme_switch_status = val;
                    });
                  },
                ),

              ],));
      }
      if (contName == "LightDarkSwitch" && contSize == "large"){
        return Container(
            width: ss.width,
            height: ss.width*.1,
            child:Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                FlutterSwitch(
                  width: 100.0,
                  height: 55.0,
                  toggleSize: 45.0,
                  value: theme_switch_status,
                  borderRadius: 30.0,
                  padding: 2.0,
                  activeToggleColor: Colors.blueGrey[700],
                  inactiveToggleColor: Colors.white,
                  activeSwitchBorder: Border.all(
                    color: Colors.blueGrey[900]!,
                    width: 6.0,
                  ),
                  inactiveSwitchBorder: Border.all(
                    color: Colors.white60,
                    width: 6.0,
                  ),
                  activeColor: Colors.black54,
                  inactiveColor: Colors.white60,
                  activeIcon: Image.asset(
                    width:45.0,
                    height:45.0,
                    "assets/images/light_theme_icon_transbg.png",
                  ),
                  inactiveIcon: Image.asset(
                    width:45.0,
                    height:45.0,
                    "assets/images/dark_theme_icon_transbg.png",
                  ),
                  onToggle: (val) {
                    widget.switch_theme();
                    setState(() {
                      theme_switch_status = val;
                    });
                  },
                ),

              ],));
      }
      if (contName == "shDrawer"){
        print("building shDrawer with size ~ " + contSize);

        print("building shDrawer with ss ~ " + ss.toString());
        double dss = 0;
        double dilsw= 0;
        double dilsh= 0;
        double dlisw = 0;
        double dlish = 0;

        if (contSize == "large"){
          dss = ss.width * .4;
          dilsw= ss.width*.08;
          dilsh= ss.width*.2;
          dlisw= ss.width * .025;
          dlish= ss.width * .025;
        }
        if (contSize == "small"){
          dss = ss.width * .8;
          dilsw= ss.width*.16;
          dilsh= ss.width*.4;
          dlisw= ss.width * .05;
          dlish= ss.width * .05;
        }
        print("building shDrawer with dss ~ " + dss.toString());
        return Drawer(
          width: dss,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              // const DrawerHeader(
              //   decoration: BoxDecoration(
              //     color: Colors.blue,
              //   ),
              //   child: Text('Drawer Header'),
              // ),
              GestureDetector(
                  onTap: (){
                    setState(() {
                      about_show = false;
                      demo_cont = null;
                    });
                    Navigator.pop(context);
                  },
                  child:ClipRRect(
                      child:
                      Image.asset('assets/images/si_dripping_logo.png',
                        height: dilsw,
                        width: dilsh,
                        fit: BoxFit.fill,
                      ))),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: ss.width * .01),
                  child: ListTile(
                    leading: Icon(Icons.work_history_outlined),
                    title: const Text('Latest Projects'),
                    onTap: () {
                      setState(() {
                        about_show = false;
                        demo_cont = null;
                      });
                      Navigator.pop(context);

                    },
                  )),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: ss.width * .01),

                  child: ListTile(
                    leading: Icon(Icons.info_outlined),
                    title: const Text('About'),
                    onTap: () {
                      setState(() {
                        about_show = true;
                        demo_cont = null;
                      });
                      Navigator.pop(context);
                    },
                  )),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: ss.width * .01),
                  child: ListTile(
                    title: const Text('Portfolio'),
                    onTap: () {},
                  )),

              ListTile(
                leading: Image.network(
                    "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAbFBMVEX///8AAAArKyvW1tbx8fGnp6fy8vLT09PZ2dk8PDz39/dlZWX4+Piurq4xMTE4ODhaWlq1tbUvLy+6urpAQECXl5fq6uqioqKPj48VFRUfHx9gYGCVlZUmJialpaWenp7BwcFHR0fi4uIZGRlXSt6CAAAEHklEQVR4nO2djVbTQBSEQ5A/0VQqKKD8+v7vyMGKcNC2k2S6d3b2zguE79yZvbMNlK5T0P1VP1vXD5+iMdbr6x5B54fRGOtFATz5EI2xXvcMwOFjNMZ6cSboDngubFEK4ML9kBlyTcQpM4jIfk0sMoNx4ix6d0D7NZFVLVAci2YG45RrApHyjT6rGqKsaoHKGz0i/zXhfshkVQvUGQVQOIMUQOU1QQFUrmociwqfopwJugMqrwkKoHJVyzWByH5N2GfQvqop3+gzg4gW7hlcujeZhTug/W1i6Q7Yu68J5VfYmUFEvfsE/T+ycLfo4A7Yu1vU/jMZ+wzar4mlfVUTtuhnBqDyjZ4CqJxBzgSF9yAF0D6DylWNk0HhNcGxqPshY59B+zWh/AI0LYrIv6q5N5msaoGiACq/fMmqhsi+qvmvCfcJKr98yTWByP9G725R5ZcvmUFEvTug8suXtCiirGqBOmAAKt/oKYDKGaQAKlc1CqByVeNk0P2Qsc+g/ZpQrmppUUTKVS3XBKKsal13vD9fR1OSwDlFtz+Zcmt5iAIEXr5QAH9EAQIvXyiAp1GAwJqgPCdsgkBVozznSxQg8PKF8pwwiwJrom5A4EYfZtF9xoOBqhZ2yFAeDdzowyxKeXipDE6bIOHxQFULyyDlBwCq2i0DcKpFZyMCFhUAnIGoXNUoPwZQ1SgTnA84ERGoat8ZgHMtOhkRyKAQ4AREoKpRLDpnTcxCBKoaZYKMDE5CBKqalEVHIwJrQm6CoxCBNUEB5GVwJCLw8uWOAci16AhEYE3IAkKIpTLItyiICGSQMkH2IQMjAi9fhC0KINadQQARuNFTAHeVwa2IwI1ePINbEIGqVoFFNyACa6KSCT7rP4il1sSuM/iifxCBG/0FA7CERVd6hwisicoA3yECN/qqLLrSG0TgRk+ZYJlD5lV/EYE1UZ1FV/qDWCqDpSf4rN+IwF++UADLZvBFB1BV+8kALG/RlW6BU7RqwK4zPUXHyB6wcotulz1gxWsCE2WCyhm8ZAAqW9R+ghRA5QzaW9Qe0D6DlAnaAypb1B4w1wQi5Qk+MgD3HqMxNumIQXjzLRpjkyi/4X8l/AfRXXdMQZSeYgNGbQCRY1Thv/wmHTfX0lOkGLWXRuRMUdqouTQwaZ+oDWSRY1T/AvdLeooNGJVz3DSwNKQRKas/l0awOAXOf2k0UOC0jdoAYgMFLm/9mLSNyln90u2GkkXtDzY4X+kjbVRKFgdpRM6JKvwVk01ksQGjUhCV/40Zy6j+Ba6BW792FjmrX9qouTQwLaWNysmi9BQ5RvUvcNr3xQaWRhY4TA0UuBZu/dJGLfV1zIHKAoepgaWhnUVOu5HOIuW40V79FKMq/7Ml0hQH6XZDyaL2BxucKUobtYEs7vJK/AQ2Z2gDrqCD5AAAAABJRU5ErkJggg==",
                    width: dlisw,
                    height: dlish ),
                title: const Text('UI Demos'),
                onTap: () {
                  setState(() {
                    demo_apps_show = !demo_apps_show;
                  });
                },
              ),
              demo_apps_show == true?
              Column(children: [
                // ListTile(
                //   title: const Text('Coffee Shop'),
                //   onTap: () {
                //     // setState(() {
                //     //   about_show = false;
                //     //   demo_cont = "coffee";
                //     // });
                //     // Navigator.pop(context);
                //   },
                // ),

                LinkTextM(text: "Coffee Shop",
                    uri: "https://github.com/ryanadrig/flutter_coffee_shop_ui"),


                // ListTile(
                //   title: const Text('NFT Auction'),
                //   onTap: () {
                //     // setState(() {
                //     //   about_show = false;
                //     //   demo_cont = "nft";
                //     // });
                //     // Navigator.pop(context);
                //
                //   },
                // ),
                LinkTextM(text: "NFT Auction",
                    uri: "https://github.com/ryanadrig/nft_auction_demo"),

                // ListTile(
                //   title: const Text('Tesla Control'),
                //   onTap: () {
                //     setState(() {
                //       about_show = false;
                //       demo_cont = "tesla";
                //     });
                //     Navigator.pop(context);
                //   },
                // ),
                LinkTextM(text: "EV Control",
                    uri: "https://github.com/ryanadrig/tesla_control_flutter"),

                // ListTile(
                //   title: const Text('Travel UI'),
                //   onTap: () {
                //     setState(() {
                //       about_show = false;
                //       demo_cont = "travel";
                //     });
                //     Navigator.pop(context);
                //   },
                // ),
                LinkTextM(text: "Travel UI",
                    uri: "https://github.com/ryanadrig/travel_app_ui_flutter"),
                // ListTile(
                //   title: const Text('Art Gallery'),
                //   onTap: () {
                //     setState(() {
                //       about_show = false;
                //       demo_cont = "art";
                //     });
                //     Navigator.pop(context);
                //   },
                // ),
                LinkTextM(text: "Art Gallery",
                    uri: "https://github.com/ryanadrig/flttr_art_gallery_ui"),
                // ListTile(
                //   title: const Text('Youtube Clone'),
                //   onTap: () {
                //     setState(() {
                //       about_show = false;
                //       demo_cont = "youtube";
                //     });
                //     Navigator.pop(context);
                //   },
                // ),
                LinkTextM(text: "Youtube Clone",
                    uri: "https://github.com/ryanadrig/youtube_clone"),
                // ListTile(
                //   title: const Text('Cash App UI'),
                //   onTap: () {
                //     setState(() {
                //       about_show = false;
                //       demo_cont = "cash";
                //     });
                //     Navigator.pop(context);
                //   },
                // ),
              ]): Container(),

              Padding(
                  padding: EdgeInsets.only(bottom: ss.width * .01),
                  child: ListTile(
                    leading: Image.network(
                        "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADgAAAA4CAMAAACfWMssAAAAZlBMVEX///8XFRUAAAATEREKBgYRDg7t7e2BgIA3NjbZ2dlTUlLq6urCwsKJiIjGxsb39/ebm5uPj492dXVwcHC5ubnMzMyqqqo+PT1OTU0lJCRYWFiysrIwLy/j4+NIR0d7e3tkY2MdGxs/J1iEAAAB9klEQVRIie2W23aDIBBFdUCNmqjUaDRGY/7/JztcvOFg0qeurtXzZIFNYWY4E8/71x9QXtWFEEVd5T+hevGAWQ/Rf4hVDUDgzwoAhuoDLEyA+5Y4NOE7rttjGu2OuSdQmBR8HXGjk0NydHPlAYdk6eIK0EEEtiUY6DBDQXO94k5eLAC/GJdJ5LgHgIi9QZExCbbLrgUySfmMygQ/xHKaF8XV6oJwVX+k6TQc6q+znq0JUN8MzvQ9KtC33c9cdURdiXZPD/ww5qYy+GBP5CaF4HgK6TRvP7PpKILmTFjn4C26AL3hIrPgYg3f1RWDm5PzErWC363hF3v3BCKdELsGHAdZSZglNPh0g5cjkI9usKRBn5E3WOmkDIz51nDC36TDVAhPrPHIHIQqf6XOLIjoccZdoL7LvsrDqRYdmZzsD3YGq+4eEGdRMrmQzmJLGkCA5u/Dbecs8W2yPyoG4PNSbR1gn8nm19Vnol1aCeEA8t3AoA+FFjnX8rjuQLRBoulIsoVNDKYX7rIcT/sRvtN8QEtsl+HH6h862h0WgYpaWqWr0fvcvuiASzVAeMcMQuPiPA/DDols+/0ehAN3wFrHpMiesdrcgGBXtyWhgr92FgUGbvubFLeYFgtk0NJ9aquObY6KZcje/ACYlZWr1nMusw+xf/2evgEGFBJqrqKT4AAAAABJRU5ErkJggg==",
                        width: dlisw,
                        height: dlish
                    ),
                    title: const Text('Github'),
                    onTap: () {
                      html.window.open('https://github.com/ryanadrig', "tab");
                    },
                  )),
              ListTile(
                title: const Text('WebApps'),
                onTap: () {},
              ),
              // ListTile(
              //   leading: Image.network(
              //       "data:image/png;base64,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",
              //       width: dlisw,
              //       height: dlish ),
              //   title: const Text('Tweet Map'),
              //   onTap: () {
              //     html.window.open('https://silclouds.com/tweetmap_dj_index/', "tab");
              //     Navigator.pop(context);
              //   },
              // ),
              LinkTextM(text: "Tweet Map",
                  uri: "https://github.com/ryanadrig/SI_TweetMap"),
              ListTile(
                title: const Text('Games'),
                onTap: () {},
              ),
              // ListTile(
              //   leading: Image.network(
              //       "data:image/png;base64,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",
              //       width: dlisw,
              //       height: dlish ),
              //   title: const Text('React Tetris'),
              //   onTap: () {
              //     html.window.open('https://silclouds.com/tetris_1_1/', "tab");
              //   },
              // ),
              LinkTextM(text: "React Tetris",
                  uri: "https://github.com/ryanadrig/react_Tetris"),
              // ListTile(
              //   leading: Image.network(
              //       "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAbFBMVEX///8AAAArKyvW1tbx8fGnp6fy8vLT09PZ2dk8PDz39/dlZWX4+Piurq4xMTE4ODhaWlq1tbUvLy+6urpAQECXl5fq6uqioqKPj48VFRUfHx9gYGCVlZUmJialpaWenp7BwcFHR0fi4uIZGRlXSt6CAAAEHklEQVR4nO2djVbTQBSEQ5A/0VQqKKD8+v7vyMGKcNC2k2S6d3b2zguE79yZvbMNlK5T0P1VP1vXD5+iMdbr6x5B54fRGOtFATz5EI2xXvcMwOFjNMZ6cSboDngubFEK4ML9kBlyTcQpM4jIfk0sMoNx4ix6d0D7NZFVLVAci2YG45RrApHyjT6rGqKsaoHKGz0i/zXhfshkVQvUGQVQOIMUQOU1QQFUrmociwqfopwJugMqrwkKoHJVyzWByH5N2GfQvqop3+gzg4gW7hlcujeZhTug/W1i6Q7Yu68J5VfYmUFEvfsE/T+ycLfo4A7Yu1vU/jMZ+wzar4mlfVUTtuhnBqDyjZ4CqJxBzgSF9yAF0D6DylWNk0HhNcGxqPshY59B+zWh/AI0LYrIv6q5N5msaoGiACq/fMmqhsi+qvmvCfcJKr98yTWByP9G725R5ZcvmUFEvTug8suXtCiirGqBOmAAKt/oKYDKGaQAKlc1CqByVeNk0P2Qsc+g/ZpQrmppUUTKVS3XBKKsal13vD9fR1OSwDlFtz+Zcmt5iAIEXr5QAH9EAQIvXyiAp1GAwJqgPCdsgkBVozznSxQg8PKF8pwwiwJrom5A4EYfZtF9xoOBqhZ2yFAeDdzowyxKeXipDE6bIOHxQFULyyDlBwCq2i0DcKpFZyMCFhUAnIGoXNUoPwZQ1SgTnA84ERGoat8ZgHMtOhkRyKAQ4AREoKpRLDpnTcxCBKoaZYKMDE5CBKqalEVHIwJrQm6CoxCBNUEB5GVwJCLw8uWOAci16AhEYE3IAkKIpTLItyiICGSQMkH2IQMjAi9fhC0KINadQQARuNFTAHeVwa2IwI1ePINbEIGqVoFFNyACa6KSCT7rP4il1sSuM/iifxCBG/0FA7CERVd6hwisicoA3yECN/qqLLrSG0TgRk+ZYJlD5lV/EYE1UZ1FV/qDWCqDpSf4rN+IwF++UADLZvBFB1BV+8kALG/RlW6BU7RqwK4zPUXHyB6wcotulz1gxWsCE2WCyhm8ZAAqW9R+ghRA5QzaW9Qe0D6DlAnaAypb1B4w1wQi5Qk+MgD3HqMxNumIQXjzLRpjkyi/4X8l/AfRXXdMQZSeYgNGbQCRY1Thv/wmHTfX0lOkGLWXRuRMUdqouTQwaZ+oDWSRY1T/AvdLeooNGJVz3DSwNKQRKas/l0awOAXOf2k0UOC0jdoAYgMFLm/9mLSNyln90u2GkkXtDzY4X+kjbVRKFgdpRM6JKvwVk01ksQGjUhCV/40Zy6j+Ba6BW792FjmrX9qouTQwLaWNysmi9BQ5RvUvcNr3xQaWRhY4TA0UuBZu/dJGLfV1zIHKAoepgaWhnUVOu5HOIuW40V79FKMq/7Ml0hQH6XZDyaL2BxucKUobtYEs7vJK/AQ2Z2gDrqCD5AAAAABJRU5ErkJggg==",
              //       width: dlisw,
              //       height: dlish ),
              //   title: const Text('Flutter Snek'),
              //   onTap: () {
              //     html.window.open('https://silclouds.com/fsnake400/', "tab");
              //   },
              // ),
            ],
          ),
        );

      }
      if (contName == "body"){
        return Container(
            height: ss.height,
            width: ss.width,
            child: Stack(children: [
              Image.asset(
                "assets/images/ppl_blue_server_wide.jpg",
                height: ss.height,
                width: ss.width,
                fit: BoxFit.cover,
              ),
              ListView(children: [
                ( demo_cont == null && contSize == "small" ) ?
                Main_Content(content: about_show?
                  aboutContainerWidget(context, contSize, ss):
                Main_Cont_Small())                           :
                ( demo_cont == null && contSize == "large" ) ?
                Main_Content(content: about_show?
                aboutContainerWidget(context, contSize, ss):
                Main_Cont_Wide()
                )                                            :
                demo_cont != null  ?
                Demo_Content( link: demo_cont_links[demo_cont] )
                    :Container()
              ]),
            ])
        );
      }

      return Container();
    }



  _buildWideContainers(ss) {
    print("_buildWideContainers called");
      return SafeArea(
          child: Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                leading:Builder(builder:(context){ return IconButton(
          onPressed: (){Scaffold.of(context).openDrawer();},
          icon: Icon(LineAwesomeIcons.stream,
          color:Theme.of(context).textTheme.bodyLarge!.color
          ),);}),
                backgroundColor: Theme.of(context).cardColor,
                  toolbarHeight: ss.width*.1,
                  title:
                      Stack(children:[
                        buildSOLC(context, "NameHead", ),
                        buildSOLC(context, "LightDarkSwitch")
                      ]  ),
              ),
              drawer: buildSOLC(context, "shDrawer",),
              body: buildSOLC(context, "body",)
          ));
    }

    _buildSmallContainers(ss) {
      print("_buildSmallContainers called");
      return SafeArea(
          child: Scaffold(
              appBar:  AppBar(
                  automaticallyImplyLeading: false,
                  leading:Builder(builder:(context){ return IconButton(
                    onPressed: (){Scaffold.of(context).openDrawer();},
                    icon: Icon(LineAwesomeIcons.stream,
                      color:Theme.of(context).textTheme.bodyLarge!.color
                    ),);}),
                backgroundColor: Theme.of(context).cardColor,
                  toolbarHeight: ss.width*.16,
                  title:
                  Stack(children:[
                    buildSOLC(context, "NameHead"),
                    buildSOLC(context,"LightOrDarkSwitch",)
                  ]  ),),
              drawer: buildSOLC(context, "shDrawer"),
              body: buildSOLC(context, "body")
      ));
    }

    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 888) {
        return _buildWideContainers(MediaQuery.of(context).size);
      } else {
        return _buildSmallContainers(MediaQuery.of(context).size);
      }
    });
  }
}


