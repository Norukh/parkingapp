import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CitiesPage extends StatefulWidget {

  @override
  _CitiesPageState createState() => _CitiesPageState();
}

class _CitiesPageState extends State<CitiesPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(

              ),
            ),
            Padding(

            ),
            ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {

              },
            )
          ],
        ),
      ),
    )
    // TODO: implement build
    throw UnimplementedError();
  }
}