import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:vtrak_app/screens/login_page.dart';
class LogInPin extends StatefulWidget {

  @override
  _LogInPinState createState() => _LogInPinState();
}

class _LogInPinState extends State<LogInPin> {
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
            fit: BoxFit.cover,
          ),
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
            SizedBox(height: 25,),
            Container(
              child: Text("Set Your Login Pin", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700),),
            ),
            SizedBox(height: 30,),
            Container(

              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: PinCodeTextField(
                    autofocus: true,
                    controller: _textEditingController,
                    maxLength: 6,
                    highlight: false,
                    hasUnderline: false,
                    hideCharacter: false,
                    highlightPinBoxColor: Colors.white,
                    onDone: (text){
                      print(_textEditingController.text);
                    },
                    defaultBorderColor: Colors.white,
                    hasTextBorderColor: Colors.white,
                  pinTextStyle: TextStyle(fontSize: 20.0),
                   pinBoxHeight: 45,
                  pinBoxWidth: 45,
                  pinBoxRadius: 10,


                  ),
              ),
              ),
            SizedBox(height: 20,),


               Container(
                width: MediaQuery.of(context).size.width,
                 height: 50,
                padding: EdgeInsets.only(left: 20, right: 20),
                child: ElevatedButton(
                  style: ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.orange.shade700),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()),
                  ); },
                  child: Text('SET', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800,),),
                ),
              ),
          ],
        ),

      ),

    );
  }
}

