import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:vtrak_app/screens/home_screens.dart';
import 'package:vtrak_app/screens/login_page.dart';

import 'package:vtrak_app/widgets/BackgroundDecoration.dart';

class Splash extends StatefulWidget {
  const Splash({required Key key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  isLogin()async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    if(pref.getString("isLogin")!=null){
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
    }
    else{
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
    }
  }
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 1),
        (){
          isLogin();
        }
    );
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: backgroundDecoration("assets/images/bg.png"),
        child: Center(
          child: Container(
            height: 80,
            width: 150,
            decoration: backgroundDecoration("assets/images/logo_v-trak.png"),
          ),
        ),
      ),
    );
  }
}
