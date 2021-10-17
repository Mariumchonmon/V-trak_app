import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:vtrak_app/models/data_model.dart';
import 'package:vtrak_app/screens/login_pin.dart';
class HomeScreen extends StatefulWidget {


  @override
  _HomeScreenState createState() => _HomeScreenState();
}


Future<Welcome?> loginData(String uSeqNo, String clientId,) async {
  // var response = await http.post(Uri.https('ideetracker.com', 'api/users'),
  //     body: {
  //       "uSeqNo": uSeqNo,
  //       "clientId": clientId,
  //     });
  var data = {
    "Success": 1,
    "USeqNo": 1,
    "ClientID": "17",
    "Rmkrs": "Login In Success"};
  print(data);

  // if(response.statusCode == 201){
  var response;
  String responseString = response;
  if(response){
  welcomeFromJson (responseString);
  print('Success 1');

  //}
  // else return null;
}
  else{
     print('Success 0');

  }
}

class _HomeScreenState extends State<HomeScreen> {

  late Welcome _welcome ;

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
                    onPressed: () async {
                      // String  uSeqNo = newController.text;
                      // String clientId = passwordController.text;
                      // Welcome? data = await loginData(uSeqNo, clientId);
                      // setState(() {
                      //   _welcome = data!;
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LogInPin()));
                   //   });


                    },
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
