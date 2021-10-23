import 'package:flutter/material.dart';


class SlidingMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new ListView(


      children: <Widget>
      [
        Card(

            child:ListTile(
            title: Text("Tracking Page"),
             onTap: (){
             //  Navigator.pushNamed(context, '/TrackingListScreen');

             },
            leading: Icon(Icons.track_changes,color: Colors.green,),
            trailing: Icon(Icons.arrow_right_alt,color: Colors.green,))),

        Card(child:ListTile(
            title: Text("Customer Detail"),
             onTap: (){
             //  Navigator.pushNamed(context, '/TrackingListScreen');
            },
            leading: Icon(Icons.person,color: Colors.green,),
            trailing: Icon(Icons.arrow_right_alt,color: Colors.green,))),

        Card(child:ListTile(
            title: Text("Customer Feedback"),
             onTap: (){
             //  Navigator.pushNamed(context, '/TrackingListScreen');
            },
            leading: Icon(Icons.how_to_vote,color: Colors.green,),
            trailing: Icon(Icons.arrow_right_alt,color: Colors.green,))),
        Card(child:ListTile(
            title: Text("Logout"),
            onTap: (){
           //   Navigator.pushNamed(context, '/SignupScreen');
            },
            leading: Icon(Icons.logout,color: Colors.green,),
            trailing: Icon(Icons.arrow_right_alt,color: Colors.green,))),
      ]
      ,

    );
  }
}