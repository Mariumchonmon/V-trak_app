import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:vtrak_app/models/data_model.dart';
import 'package:vtrak_app/screens/login_pin.dart';
class HomeScreen extends StatefulWidget {


  @override
  _HomeScreenState createState() => _HomeScreenState();
}



class _HomeScreenState extends State<HomeScreen> {


  TextEditingController newController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

late Future<Welcome> welcome;

@override
  void initState() {
    super.initState();
    welcome = fetchPost();
  }

  Future<Welcome> fetchPost() async{
  final response = await http.get(Uri.parse('http://www.ideetracker.com/mob_trk/mRegisterPg.jsp?Str_iMeiNo=1&Str_Model=IOS&Str_Lat=1.35&Str_Long=103.85&Str_GPS=Y&Client_ID=0&Str_UserID=free&Str_Pwd=user&Str_Mob=92381245&Str_GCMID=1122'));


  if(response.statusCode == 200){

    print(response.body);
    return Welcome.fromJson(json.decode(response.body));

  }
  else {
    throw Exception('Success 1');
  }

  }
  
  
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
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white),
                    child: TextField(
                      controller: newController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20),
                        border: InputBorder.none,
                        hintText: 'Mobile Number',
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
                        hintText: 'Client Code',
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child:  Column(
                      children: [
                      FutureBuilder<Welcome>(
                      future: welcome,
                      builder: (context, a){
                        if(a.hasData){
                          print('success 1');
                          return Text('a.data.success');



                        }
                        else if (a.hasError){
                         print ('success 0');
                        // return Text('Success 0');

                        }
                        return SizedBox();
                      },
                    ),
                    Expanded(
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LogInPin()));


                        },
                      ),
                    ),
                  ],
                    ),),
                ],
              ),

            ],
          ),
        ),
      );
  }
}
