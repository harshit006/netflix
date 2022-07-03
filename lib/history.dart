import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({Key key, this.image}) : super(key: key);
  final String image;
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Image(
          height: 350,
          image: AssetImage(widget.image),
        ),
      ),
    ));
  }
}
