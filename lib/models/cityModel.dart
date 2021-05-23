import 'package:flutter/cupertino.dart';

class City {
  String shortName;
  String name;
  String url;
  String imageUrl;

  City({
    @required this.shortName,
    @required this.name,
    @required this.url,
    this.imageUrl,
  });
}