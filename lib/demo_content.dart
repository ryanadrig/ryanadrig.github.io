import 'package:flutter/material.dart';
import 'sh_globals.dart';

class Main_Content extends StatefulWidget {
  Main_Content({Key? key, required this.content}) : super(key: key);

  Widget content;
  @override
  _Main_ContentState createState() => _Main_ContentState();
}

class _Main_ContentState extends State<Main_Content> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: ss.height,
        width: ss.width * .77,
        child: Center(child: widget.content));
  }
}

class Demo_Content extends StatelessWidget {
  Demo_Content({Key? key, required this.link}) : super(key: key);

  String link;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(ss.height *.05, ss.height*.05, ss.height*.05, ss.height*.05),
        decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(ss.width*.02)
        ),
        child: Image.network(
        link,
        height: ss.height* .67,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          } else {
            return Container(
                height: ss.height*.8,
                width: ss.height*.33,
                color: Theme.of(context).cardColor,
                child:Center(
                    child: CircularProgressIndicator()
                ));
          }}
    ));
  }
}
