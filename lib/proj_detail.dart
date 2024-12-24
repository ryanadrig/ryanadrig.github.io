import 'package:flutter/material.dart';
import 'sh_globals.dart';
import 'link_text_w.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class Proj_Detail extends StatefulWidget {
   Proj_Detail({Key? key,
     required this.app_cont_app,

  }) : super(key: key);

  Map app_cont_app;
  @override
  State<Proj_Detail> createState() => _Proj_DetailState();
}

class _Proj_DetailState extends State<Proj_Detail> {
  @override
  Widget build(BuildContext context) {
    double about_cont_lg_padding = ss.height * .012;
    double about_cont_lg_desc_txt = ss.height * .01;
    double about_cont_lg_cont_size = ss.width*.7;
    double about_cont_lg_title_txt = ss.height * .014;


    List<Widget> app_feats_bullets = [];

    for (var af in widget.app_cont_app["app_feats"]) {
     app_feats_bullets.add( Container(
        width: about_cont_lg_cont_size * .9,
        child:
        Text("•   " + af),
      ));
    }

    List<Widget> app_roles_bullets = [];

    for (var af in widget.app_cont_app["my_role"]) {
      app_roles_bullets.add( Container(
        width: about_cont_lg_cont_size * .9,
        child:
        Text("•   " + af),
      ));
    }


    Widget about_cont= Container(
        // padding: EdgeInsets.all(about_cont_lg_padding),

        height: ss.height,
        color: Theme.of(context).cardColor,
        child:
        ClipRRect(
            borderRadius: BorderRadius.circular(ss.width*.03),
            child:
            Container(
            color: Theme.of(context).canvasColor,
                padding: EdgeInsets.symmetric(horizontal: about_cont_lg_desc_txt),
            child:ListView(
              // mainAxisSize: MainAxisSize.max,
                children:[

            Padding(
            padding: EdgeInsets.only(top:about_cont_lg_padding),
            child:
            ClipRRect(
                borderRadius: BorderRadius.circular(ss.width*.03),
                child:
                Container(
                // width: about_cont_lg_cont_size < 500 ? about_cont_lg_cont_size: (ss.width * .3),
                  width: (ss.width * .32),
                  height: 400,
                  child:Image.network(
                      widget.app_cont_app["img_link"],
                  fit:BoxFit.fitHeight
                  )))),

                  Padding(
                      padding: EdgeInsets.only(top:about_cont_lg_padding),
                      child: Container(
                          width: about_cont_lg_cont_size < 500 ? about_cont_lg_cont_size: (ss.width * .3),
                          padding: EdgeInsets.only(top: about_cont_lg_title_txt/2),
                          child:Text(
                              widget.app_cont_app["app_name"]
                                  + " - " + widget.app_cont_app["app_short_desc"],
                              style: TextStyle(fontSize: about_cont_lg_title_txt)))),

                  Padding(
                      padding: EdgeInsets.only(top:about_cont_lg_padding),
                      child: Container(
                          width: about_cont_lg_cont_size < 500 ? about_cont_lg_cont_size: (ss.width * .3),
                          padding: EdgeInsets.only(top: about_cont_lg_title_txt/2),
                          decoration: BoxDecoration(
                              border: Border(bottom:BorderSide(width:1, color:Theme.of(context).textTheme.bodyLarge!.color!))
                          ),
                          child:Text("# Summary",
                              style: TextStyle(fontSize: about_cont_lg_title_txt)))),


                  Padding(
                      padding: EdgeInsets.only(top:about_cont_lg_padding /2),
                      child:
                      Column(children:[
                        Container(
                          padding: EdgeInsets.only(top:about_cont_lg_padding /6),
                          width: about_cont_lg_cont_size * .9,
                          child:
                          Text(widget.app_cont_app["app_long_desc"]),
                        ),

                      ])
                  ),




                  Padding(
                      padding: EdgeInsets.only(top:about_cont_lg_padding),
                      child: Container(
                          width: about_cont_lg_cont_size,
                          padding: EdgeInsets.only(top: about_cont_lg_title_txt/2),
                          decoration: BoxDecoration(
                              border: Border(bottom:BorderSide(width:1, color:Theme.of(context).textTheme.bodyLarge!.color!))
                          ),
                          child:Text("# Technical Features",
                              style: TextStyle(fontSize: about_cont_lg_title_txt)))),
                  Padding(
                      padding: EdgeInsets.only(top:about_cont_lg_padding /2),
                      child:
                      Column(children:app_feats_bullets)),

                  Padding(
                      padding: EdgeInsets.only(top:about_cont_lg_padding),
                      child: Container(
                          width: about_cont_lg_cont_size,
                          padding: EdgeInsets.only(top: about_cont_lg_title_txt/2),
                          decoration: BoxDecoration(
                              border: Border(bottom:BorderSide(width:1, color:Theme.of(context).textTheme.bodyLarge!.color!))
                          ),
                          child:Text("# My Role",
                              style: TextStyle(fontSize: about_cont_lg_title_txt)))),


                  Padding(
                      padding: EdgeInsets.only(top:about_cont_lg_padding/2),
                      child: Container(
                          width: about_cont_lg_cont_size,
                          child:
                          Column(
                              children:[

                                Container(
                                    padding: EdgeInsets.only(top:about_cont_lg_padding /6),
                                    width: about_cont_lg_cont_size * .9,
                                    child:Column(children:app_roles_bullets)
                                ),
                                Container(
                                  padding: EdgeInsets.only(top:about_cont_lg_padding ),)

                              ]))),


                ]))));

    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            leading:Builder(builder:(context){ return IconButton(
              onPressed: (){Navigator.pop(context);},
              icon: Icon(LineAwesomeIcons.arrow_left,
                  color:Theme.of(context).textTheme.bodyLarge!.color
              ),);}),
            backgroundColor: Theme.of(context).cardColor,
            toolbarHeight: ss.width*.1,
            title: Container(
                width: ss.width,
                height: ss.width*.1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      widget.app_cont_app["app_name"],
                      style: TextStyle(fontSize: ss.width * .025,
                          color: Theme.of(context).textTheme.bodyLarge!.color),),
                    // Text(
                    //   "Flutter Developer and UI/UX Designer",
                    //   style: TextStyle(fontSize: ss.width * .02,
                    //       color: Theme.of(context).textTheme.bodyLarge!.color),
                    // )
                  ],
                ))),
        body: Container(
        height: ss.height,
        width: ss.width,

        child: Stack(children: [
          Image.asset(
            "assets/images/ppl_blue_server_wide.jpg",
            height: ss.height,
            width: ss.width,
            fit: BoxFit.cover,
          ),

          about_cont


        ])));
  }
}
