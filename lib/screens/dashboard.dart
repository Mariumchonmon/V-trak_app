import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';  //for date format
import 'package:intl/date_symbol_data_local.dart';


class Dashboard extends StatefulWidget {


  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late DateFormat dateFormat;

  // for the boxes
  BoxDecoration _decoration = BoxDecoration(
    shape: BoxShape.rectangle,
    color: Colors.red.shade100,
    borderRadius: BorderRadius.circular(8),
  );

  // for the gridview items
     ButtonStyle _buttonStyle = ButtonStyle(
     backgroundColor:  MaterialStateProperty.all<Color>(Colors.blueGrey.shade900,),
     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
       RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(10.0),),
     ),
 );
  @override
  void initState() {
    super.initState();
    initializeDateFormatting();
    dateFormat = new DateFormat.yMd().add_jm();

  }

  @override
  Widget build(BuildContext context) {
    var dateTime = new DateTime.now();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange.shade700,
          title: Center(child: Text('DASHBOARD', style: TextStyle(fontSize: 25,),)),
          leading:  Builder(
            builder: (BuildContext context) {
              return IconButton(
                padding: EdgeInsets.only(left: 10, right: 10),
                icon: const Icon(Icons.menu,),iconSize: 40,
                onPressed: () { },
                //tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          actions: [
            IconButton(
        padding: EdgeInsets.only(left: 5),
                onPressed: (){},
                icon: Icon(Icons.notifications),
              iconSize: 40,
      color: Colors.white,)
            ,
            IconButton(onPressed: (){}, icon: Icon(Icons.refresh, size: 40, color: Colors.white,),
            padding: EdgeInsets.only(right: 20),)
          ],

        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView (
    child: Column(
              children: [

                Container(
                  padding: EdgeInsets.all(10),
                    height: 150,
                    margin: EdgeInsets.all(10.0),
                    decoration: _decoration ,
                    child: Column(
                      children: [
                        
                        Row(
                          children: [
                            Icon(Icons.person, size: 30,),
                            SizedBox(width: 10,),
                            Text('Mohamed Asik', style: TextStyle(fontSize: 20,
                               // fontWeight: FontWeight.w500,
                                color: Colors.black),)
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Icon(Icons.airport_shuttle_outlined, size: 30,),
                            SizedBox(width: 10,),
                            Text('GDB4325H', style: TextStyle(
                                fontSize: 20,
                              //  fontWeight: FontWeight.w500,
                                color: Colors.black),)
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Icon(Icons.date_range, size: 30,),
                            SizedBox(width: 10,),
                            Text(dateFormat.format(dateTime), style: TextStyle(
                                fontSize: 20,
                             //   fontWeight: FontWeight.w600,
                                color: Colors.black),),


                          ],
                        ),

                      ],
                    ),
                  ),

               // SizedBox(height: 5,),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 5),
                  height: 280,
                  decoration: _decoration,
                  child: GridView.count(
                    primary: false,
                   padding: const EdgeInsets.all(10),
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    crossAxisCount: 3,
                    children: <Widget>[
                      Container(
                       padding: const EdgeInsets.only(top: 5),
                        child: ElevatedButton(
                          onPressed: () {  },
                          style: _buttonStyle,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.car_rental,  color: Colors.white, size: 50,),
                              SizedBox(height: 8,),
                              Text("ON-DUTY", style: TextStyle(fontSize: 12),)
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 5),
                        child: ElevatedButton(
                          onPressed: () {  },
                          style: _buttonStyle,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.list_alt,  color: Colors.white, size: 50,),
                              SizedBox(height: 8,),
                              Text("ORDER LIST", style: TextStyle(fontSize: 12),)
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 5),
                        child: ElevatedButton(
                          onPressed: () {  },
                          style: _buttonStyle,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.settings,  color: Colors.white, size: 50,),
                              SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text('DEVICE CHECK', style: TextStyle(fontSize: 12),),
                            )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 5),
                        child: ElevatedButton(
                          onPressed: () {  },
                          style: _buttonStyle,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              ImageIcon(AssetImage('assets/images/logo_v-trak.png'), size: 70,),

                           //   SizedBox(height: 8,),
                              Text("VTRAK", style: TextStyle(fontSize: 12),)
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 5),
                        child: ElevatedButton(
                          onPressed: () {  },
                          style: _buttonStyle,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.list_alt,  color: Colors.white, size: 50,),
                              SizedBox(height: 8,),
                              Text("ICEMAN", style: TextStyle(fontSize: 12),)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 5),
                  height: 110,
                  decoration: _decoration,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Icon(Icons.location_on, size: 30,),
                                Text('219 UPPER BUKIT TIMAH RD, SINGAP......', style: TextStyle( fontSize: 16,color: Colors.black, ),)
                              ],

                            ),
                          ),
                         Divider(
                           indent: 30,
                           height: 1, color: Colors.black,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.satellite, size: 30,),
                                SizedBox(width: 10,),
                                Icon(Icons.directions_car_rounded, size: 30,),
                                SizedBox(width: 10,),
                                Icon(Icons.person_pin_outlined, size: 30,),
                                SizedBox(width: 10,),
                              ],

                            ),
                          ),
                        ],
                      ),
                    ),
                  ),



              ],


            ),

          ),
        ),

      ),
    );
  }
}
