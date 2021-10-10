import 'package:flutter/material.dart';
class NavigationBar extends StatefulWidget {

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            height: 60,
            width: MediaQuery.of(context).size.width/6,
            decoration: BoxDecoration(
              color: Colors.orange,
              shape: BoxShape.rectangle,
              borderRadius: new BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage("assets/images/Rectangle 20.png"),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width/6,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: new BorderRadius.circular(8.0),
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage("assets/images/Rectangle 21.png"),
              ),
            ),
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width/6,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: new BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage("assets/images/Rectangle 26.png"),
                ),


            ),
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width/6,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: new BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage("assets/images/Rectangle -2.png",),
                ),

            ),
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width/6,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: new BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage("assets/images/Rectangle -1.png"),
                ),

            ),
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width/6,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: new BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage("assets/images/Rectangle 16.png"),
              ),

            ),
          ),

        ],
      ),




    );
  }
}
