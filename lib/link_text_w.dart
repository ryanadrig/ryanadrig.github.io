import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkTextW extends StatefulWidget {
  LinkTextW({Key? key, required this.text, required this.uri}) : super(key: key);

  String text;
  String uri;
  @override
  State<LinkTextW> createState() => _LinkTextWState();
}

class _LinkTextWState extends State<LinkTextW> {

  Color linkTextColor = Colors.blueAccent;
  Color hoverLinkTextColor = Colors.lightBlueAccent;
  Color activeLinkTextColor = Colors.blueAccent;
  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
          onTap:(){
            launchUrl(Uri.parse(widget.uri));},
      child: MouseRegion(
          cursor: SystemMouseCursors.click,
          onEnter:(PointerEnterEvent pee){
          setState(() {
            activeLinkTextColor = hoverLinkTextColor;
          });
        },
          onExit:(PointerExitEvent pee){
            setState(() {
              activeLinkTextColor = linkTextColor;
            });
          }
        , child:Text(widget.text, style: TextStyle(color: activeLinkTextColor))));
  }
}

class LinkTextM extends StatefulWidget {
  LinkTextM({Key? key, required this.text, required this.uri}) : super(key: key);

  String text;
  String uri;
  @override
  State<LinkTextM> createState() => _LinkTextMState();
}

class _LinkTextMState extends State<LinkTextM> {

  Color linkTextColor = Colors.greenAccent;
  Color hoverLinkTextColor = Colors.purpleAccent;
  Color activeLinkTextColor = Colors.greenAccent;
  @override
  Widget build(BuildContext context) {
    var ss = MediaQuery.of(context).size;
    return
    Row(children: [
      Padding(padding:
      EdgeInsets.symmetric(horizontal: ss.width * .02,
          vertical: ss.width * .01
      )),
      GestureDetector(
          onTap:(){
            launchUrl(Uri.parse(widget.uri));},
          child: MouseRegion(
              cursor: SystemMouseCursors.click,
              onEnter:(PointerEnterEvent pee){
                setState(() {
                  activeLinkTextColor = hoverLinkTextColor;
                });
              },
              onExit:(PointerExitEvent pee){
                setState(() {
                  activeLinkTextColor = linkTextColor;
                });
              }
              , child:Text(widget.text,
              style: TextStyle(color: activeLinkTextColor,
              fontSize: ss.width * .0225
              ))))

    ]);
  }
}