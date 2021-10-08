import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController newController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
          fit: BoxFit.cover),
        ),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
             Container(
               width: MediaQuery.of(context).size.width,
               padding: EdgeInsets.all(50),
               margin: const EdgeInsets.only(bottom: 20.0,),

              decoration: BoxDecoration(
                image: DecorationImage(
                        image: AssetImage('assets/images/logo_v-trak.png'),

        ),
                ),
              ),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
              color: Colors.white),
              child: TextField(
                controller: newController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  border: InputBorder.none,
                  hintText: 'User Name',
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  border: InputBorder.none,
                  hintText: 'Password',
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: ElevatedButton(
                style: ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: Colors.orange.shade700,
                    width: 2.0),
                  ),
                ),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.orange.shade700),
                ),
                child: Text('Login', style: TextStyle(fontSize: 22),),
                onPressed: () {
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
