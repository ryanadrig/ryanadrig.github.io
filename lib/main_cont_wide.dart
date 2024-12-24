import 'package:flutter/material.dart';
import 'package:silclouds_home_flutter_upg/proj_detail.dart';
import 'sh_globals.dart';
import 'dart:math' as math;
import 'dart:core';
import 'contact_button.dart';

List<bool> item_mborder = [false, false, false, false, false];

class LatestProjRI extends StatefulWidget {
  LatestProjRI({Key? key,
  required this.ii,
    required this.cli
  }) : super(key: key);

  int ii;
  int cli;
  @override
  State<LatestProjRI> createState() => _LatestProjRIState();
}

class _LatestProjRIState extends State<LatestProjRI> {

  int grid_item_extent = 2;

  @override
  Widget build(BuildContext context) {

    TextStyle titleTS = TextStyle(fontSize: ss.height*.013);
    TextStyle subtitleTS = TextStyle(fontSize: ss.height*.012);
    TextStyle descTS = TextStyle(fontSize: ss.height*.012);

    double itemWidth = ss.width*.32;
    //
    // if (ss.width > 1100) {
    //   itemWidth = ss.width ;
    //   grid_item_extent = 3;
    //   titleTS = TextStyle(fontSize: ss.height*.018);
    //   subtitleTS = TextStyle(fontSize: ss.height*.015);
    //   descTS = TextStyle(fontSize: ss.height*.015);
    //   itemWidth = ss.width*.224;
    // }
    // if (ss.width > 800 && ss.width < 1100) {
    //   itemWidth = 299;
    //   grid_item_extent = 2;
    //   titleTS = TextStyle(fontSize: ss.height*.018);
    //   subtitleTS = TextStyle(fontSize: ss.height*.015);
    //   descTS = TextStyle(fontSize: ss.height*.015);
    //   itemWidth = ss.width*.45;
    // }
    // if (ss.width < 800) {
    //   itemWidth = 265;
    //   grid_item_extent = 2;
    //   titleTS = TextStyle(fontSize: ss.height*.016);
    //   subtitleTS = TextStyle(fontSize: ss.height*.014);
    //   descTS = TextStyle(fontSize: ss.height*.014);
    //   itemWidth = ss.width*.45;
    // }


    return
      Flexible(child:
      // Padding(padding: EdgeInsets.fromLTRB(
      //   ss.width * .01, ss.width * .03, ss.width * .01,
      //   ss.width * .03),
      //   child:
        MouseRegion(
            cursor: SystemMouseCursors.click,
            onEnter: (mee) {
          // print("meeef " + (widget.ii+widget.cli).toString());
          setState(() {
            item_mborder[widget.ii + widget.cli] = true;
          });
        },
        onExit: (mee) {
          // print("meeef " + (widget.ii+widget.cli).toString());
          setState(() {
            item_mborder[widget.ii + widget.cli] = false;
          });
        },
        child:
    Padding(padding: EdgeInsets.fromLTRB(
    ss.width * .01, ss.width * .03, ss.width * .01,
    ss.width * .03),
    child:
        GestureDetector(
          onTap:(){
          Navigator.of(context).push(MaterialPageRoute(builder: (context){
            return Proj_Detail(app_cont_app: main_content[widget.ii + widget.cli] );
          }));
          },
              child:Container(
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(ss.width * .02),
              color: Theme.of(context).cardColor,
              border: item_mborder[widget.ii + widget.cli] == true
              ? Border.all(
                  color: Colors.lightBlueAccent, width: 2)
                  : Border.all(
                  color: Theme.of(context).scaffoldBackgroundColor, width: 2)
              ),
              child:
              Container(
              width: itemWidth,
              height: itemWidth * 1.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(ss.width * .02),
                color: Theme.of(context).cardColor,
              ),

              child: Column(children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(
                        ss.width * .02),
                    child: Container(height: itemWidth * .75,
                        child: Image.network(
                          main_content[widget.ii + widget.cli]["img_link"],
                          fit: BoxFit.fitHeight,
                        ))),
                Flexible(child: Container(height: ss.width * .02,)),
                Padding(padding: EdgeInsets.all(ss.height * .01),
                    child:
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text(
                            main_content[widget.ii + widget.cli]["app_name"],
                            style: titleTS
                        ),
                        ])),
                Expanded(child:
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[Text(
                        main_content[widget.ii + widget.cli]["app_short_desc"],
                        style: subtitleTS
                    )])
                    ])
                ),
                Flexible(child: Container(height: ss.width * .01,)),
                Padding(padding: EdgeInsets.all(ss.height * .01),
                    child:
                    Text(
                        main_content[widget.ii + widget.cli]["app_long_desc"],
                        style: descTS))
              ],),
            ))))));
  }
}


class Main_Cont_Wide extends StatefulWidget {
  const Main_Cont_Wide({Key? key}) : super(key: key);

  @override
  State<Main_Cont_Wide> createState() => _Main_Cont_WideState();
}

class _Main_Cont_WideState extends State<Main_Cont_Wide> {



  // double itemWidth = 0;
  int grid_item_extent = 2;
  late TextStyle mainTS = TextStyle(fontSize: ss.width*.025);
  late TextStyle titleTS;
  late TextStyle subtitleTS;
  late TextStyle descTS;

 List<Widget> built_main_cmcl_items(List cl) {
    print("call built_main_cmcl");
    List<Widget> built_items = [];

    int ii = 0;
    for (var el in main_content ) {
      List<Widget> row_items = [];
      for (var cli = 0; cli < grid_item_extent; cli += 1) {
        if (ii + cli > main_content.length - 1) {
          // print("Adding container");
          row_items.add(Container());
        }

        else {
          item_mborder.add(false);
          print("ii ~ " + ii.toString());
          print("cli ~ " + cli.toString());
          print("building main cont app ~ " +
              main_content[ii + cli]["app_name"]);

          row_items.add(
             LatestProjRI(ii:ii, cli: cli)
          );
        }
      }

      built_items.add(
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: row_items)
      );
      ii += grid_item_extent;
    }
    return built_items;
  }


  Widget build(BuildContext context) {

    List<Widget>  cache_built_main_cmcl_items = [
      // ClipRRect(
      //   borderRadius: BorderRadius.circular(ss.width*.03),
      //   child:
      //   Padding(padding: EdgeInsets.symmetric(vertical:ss.width*.04),
      //       child:
            Container(
                padding: EdgeInsets.fromLTRB(ss.width*.04,ss.width*.02,ss.width*.04,ss.width*.01),
                width: ss.width ,
                // height: ss.width * 1.2,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(ss.width*.03),
                   color: Theme.of(context).scaffoldBackgroundColor,
                ),

                child:Text("Latest Projects", style: mainTS))
    // )
    // )

    ];

    print("rebuild large main");

    // if (ss.width > 1100) {
    //   itemWidth = ss.width/3.1 ;
      grid_item_extent = 3;
      // titleTS = TextStyle(fontSize: ss.height*.01);
      // subtitleTS = TextStyle(fontSize: ss.height*.009);
      descTS = TextStyle(fontSize: ss.height*.009);

    // }
    // if (ss.width > 800 && ss.width < 1100) {
    //   itemWidth = 314;
    //   grid_item_extent = 2;
    //   // titleTS = TextStyle(fontSize: ss.height*.06);
    //   // subtitleTS = TextStyle(fontSize: ss.height*.05);
    //   descTS = TextStyle(fontSize: ss.height*.01);
    // }
    // if (ss.width < 800) {
    //   itemWidth = 275;
    //   grid_item_extent = 2;
    //   // titleTS = TextStyle(fontSize: ss.height*.06);
    //   // subtitleTS = TextStyle(fontSize: ss.height*.05);
    //   descTS = TextStyle(fontSize: ss.height*.01);
    // }

    return Padding(padding: EdgeInsets.all(ss.width*.01),
      child:    ClipRRect(
          borderRadius: BorderRadius.circular(ss.width*.03),
          child: Container(
              // height: ss.height,
              width: ss.width,
              color: Theme.of(context).cardColor,
              child:
              Column(children:
                  cache_built_main_cmcl_items..addAll(
              built_main_cmcl_items(main_content))..addAll(
                    [ContactButton()
                    ]
                  )
                ,)
          )),
    );
  }
}
