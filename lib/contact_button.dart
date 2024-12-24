
import 'sh_globals.dart';
import 'package:flutter/material.dart';

class ContactButton extends StatefulWidget {
  ContactButton({Key? key,
  }) : super(key: key);


  @override
  State<ContactButton> createState() => _ContactButtonState();
}

class _ContactButtonState extends State<ContactButton> {

  bool contact_shown = false;
  late TextStyle mainTS;
  late TextStyle descTS;

  @override
  Widget build(BuildContext context) {
    mainTS = TextStyle(fontSize: ss.height*.015);
    descTS = TextStyle(fontSize: ss.height*.014);
    return Padding(padding: EdgeInsets.symmetric(vertical:ss.width*.04),
        child:Container(
            padding: EdgeInsets.fromLTRB(ss.width*.04,ss.width*.02,ss.width*.04,ss.width*.01),
// width: ss.width * .88,
            height: ss.height<500? 500: ss.height ,
            decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(ss.width*.03),
              color: Colors.white,
            ),

            child:
            Column(children:[
            Flexible(child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Would You like to work with me?", style: mainTS)
                ],)),
              Flexible(child:
              Padding(
                padding:EdgeInsets.only(top:ss.height*.02),
                child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("I'm open for new job opportunities and freelance work!",
                    style: descTS)
                ],))),
            Flexible(child:
            Padding(
                padding:EdgeInsets.only(top:ss.height*.06),)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding:EdgeInsets.only(top:ss.width*.05),
                      child:MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child:
                          GestureDetector(
                            onTap: (){
                              // print("mail to");
                              setState(() {
                                contact_shown= !contact_shown;
                              });
                            },
                            child:
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(ss.width*.03),
                                    border: Border.all(color: Theme.of(context).textTheme.bodyLarge!.color!, width: 3.0)
                                ),
                                child:ClipRRect(
                                    borderRadius: BorderRadius.circular(ss.width*.03),
                                    child:
                                    Container(
                                        width: 250,
                                        height: 88,
                                        decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(ss.width*.03),
                                          color: Theme.of(context).cardColor,
                                        ),

                                        child:Center(child:Text("Contact", style: mainTS))),
                                )),
                          )))
                ],),
          Flexible(child:  Padding(
                padding:EdgeInsets.only(top:ss.height*.1))),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedContainer(duration: Duration(milliseconds: 888),
                  height: contact_shown?300:0,
                    child: Column(children:[
                      Flexible(child:Padding(
                        padding:EdgeInsets.all(20),
                      child:Text("siginfinite@gmail.com",
                      style: mainTS,
                      ))),
        Flexible(child:Padding(
        padding:EdgeInsets.all(20),
    child:Text("(949)-751-9864",
    style: mainTS,
    )))

                    ]),
                  )
                ]),
          ])
        ));
  }
}


