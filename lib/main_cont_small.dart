import 'package:flutter/material.dart';
import 'sh_globals.dart';
import 'contact_button.dart';
import 'package:silclouds_home_flutter_upg/proj_detail.dart';

class Main_Cont_Small extends StatefulWidget {
  const Main_Cont_Small({Key? key}) : super(key: key);

  @override
  State<Main_Cont_Small> createState() => _Main_Cont_SmallState();
}

class _Main_Cont_SmallState extends State<Main_Cont_Small> {


  @override
  Widget build(BuildContext context) {
    TextStyle mainTS = TextStyle(fontSize: ss.height*.02);
    TextStyle titleTS = TextStyle(fontSize: ss.height*.018);
    TextStyle subtitleTS = TextStyle(fontSize: ss.height*.016);
    TextStyle descTS = TextStyle(fontSize: ss.height*.016);

    built_main_lv_items(List cl){
    List<Widget> built_items = [
    ClipRRect(
        borderRadius: BorderRadius.circular(ss.width*.03),
        child:
    Padding(padding: EdgeInsets.all(ss.width*.04),
      child:Container(
          padding: EdgeInsets.all(ss.width*.04),
      width: ss.width,
      // height: ss.width * 1.2,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(ss.width*.03),
      color: Theme.of(context).scaffoldBackgroundColor,
      ),

      child:Text("Latest Projects", style: mainTS))))
      ];

    int ii = 0;
    for (var el in cl){
      int loc_i = ii;
        built_items.add(
            // Padding(padding: EdgeInsets.all(ss.width*.04),
            // child:

            GestureDetector(
                onTap:(){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return Proj_Detail(app_cont_app: main_content[loc_i] );
                  }));
                },
                child:Container(
          // width: ss.width * .88,
          // height: ss.width * 1.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(ss.width*.03),
            color: Theme.of(context).cardColor,
          ),

          child: Column(children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(ss.width*.03),
            child: Container(
                height: ss.width*.44,
            // width: ss.width,
            child:Image.network(main_content[ii]["img_link"],
            fit: BoxFit.fitHeight
            ))),
            Container(height: ss.width*.02,),
              Padding(padding: EdgeInsets.all(ss.width*.02),
                child:
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[Text(main_content[ii]["app_name"],
            style: titleTS
            ),])),
          Padding(padding: EdgeInsets.all(ss.width*.02),
              child:
                  Text(main_content[ii]["app_short_desc"],
            style:subtitleTS
            )),
            Container(height: ss.width*.01,),
              Padding(padding: EdgeInsets.all(ss.width*.02),
                child:
            Text(main_content[ii]["app_long_desc"],
            style:descTS))
          ],),
        ))
        );
        ii +=1;
      }
      return built_items;
    }

    return Padding(padding: EdgeInsets.all(ss.width*.05),
    child:    ClipRRect(
    borderRadius: BorderRadius.circular(ss.width*.03),
    child: Container(
        // height: ss.height,
        width: ss.width,
        color: Theme.of(context).cardColor,
        child:
    Column(children:
      built_main_lv_items(main_content)..addAll([
        Padding(
          padding:EdgeInsets.only(top:ss.height*.1),
          child:ContactButton())
      ])
    ,)
    )),
    );
  }
}

