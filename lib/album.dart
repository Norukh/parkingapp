import 'package:flutter/cupertino.dart';

class Album {
  final int userId;
  final int id;
  final String title;

  Album({
    @required this.userId,
    @required this.id,
    @required this.title
  });

  factory Album.fromJSON(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title']
    );
  }
}