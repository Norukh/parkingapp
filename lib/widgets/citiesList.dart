import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CitiesList extends StatefulWidget {

  String shortName;
  String name;
  String url;
  Color color;
  String imageUrl;

  CitiesList({
    @required this.shortName,
    @required this.name,
    @required this.url,
    @required this.color,
    this.imageUrl
  });

  @override
  _CitiesListState createState() => _CitiesListState();
}

class _CitiesListState extends State<CitiesList> {

  static const TextStyle avatarTextStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
          MaterialPageRoute(builder: (context) {
            return ParkingPage(widget.url);
          }));
      },
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage(widget.imageUrl),
                    backgroundColor: widget.color,
                    child: Center(
                      child: Text(
                        widget.shortName,
                        style: avatarTextStyle
                      ),
                    ),
                    maxRadius: 30,
                  ),
                  SizedBox(width: 16,),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(widget.name, style: TextStyle(fontSize: 16),),
                          SizedBox(height: 6,),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            // TODO: insert text number of parkings
          ],
        )
      ),
    );
  }

}