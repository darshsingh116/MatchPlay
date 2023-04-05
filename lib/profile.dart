//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
/*void profilePage() {
  runApp(MaterialApp(
    home: Profile(),
    theme: ThemeData(fontFamily: 'Poppins'),
  ));
}*/

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            counter = counter + 1;
          });
        },
        child: Container(
          width: 60,
          height: 60,
          child: Icon(FontAwesomeIcons.pencil,
            size: 30, //Icon Size
            color: Colors.black87, //Color Of Icon
          ),
          decoration: BoxDecoration(
            color: Color.fromRGBO(192, 178, 19,0.8),
            shape: BoxShape.circle,

          ),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex:4,
                child:Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.black,Colors.grey],
                    ),
                  ),
                  child: Column(
                      children: [
                        SizedBox(height: 80.0,),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.white),
                            borderRadius: BorderRadius.circular(100), //<-- SEE HERE
                          ),
                          child: CircleAvatar(
                            radius: 65.0,
                            backgroundImage: AssetImage('assets/erza.jpg'),
                            backgroundColor: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        Text('Erza Scarlet',
                            style: TextStyle(
                                color:Colors.white,
                                fontSize: 20.0,
                                fontFamily: 'Prosto_One'
                            )),
                        SizedBox(height: 2.0,),
                        Text('S Class Mage',
                          style: TextStyle(
                            color:Colors.white,
                            fontSize: 15.0,
                          ),)
                      ]
                  ),
                ),
              ),

              Expanded(
                flex:1,

                child: Container(

                  color: Colors.grey[200],

                  child: Center(

                      child:Card(
                          color: Colors.black45,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),//<-- SEE HERE
                            side: BorderSide(
                              color: Colors.black12,
                              width: 3,
                            ),
                          ),
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                          child: Container(
                              width: 310.0,
                              height:60.0,
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          color: Colors.white70,
                                          size: 35,
                                        ),
                                        SizedBox(width: 20.0,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Germany",
                                              style: TextStyle(
                                                fontSize: 15.0,
                                                color: Colors.white,
                                              ),),
                                            Text("Berlin",
                                              style: TextStyle(
                                                fontSize: 12.0,
                                                color: Colors.grey[400],
                                              ),)
                                          ],
                                        )

                                      ],
                                    ),



                                  ],
                                ),
                              )
                          )
                      ),


                  ),
                ),
              ),
              Expanded(
                flex:1,

                child: Container(

                  color: Colors.grey[200],

                  child: Center(

                    child:Card(
                        color: Colors.black45,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),//<-- SEE HERE
                          side: BorderSide(
                            color: Colors.black12,
                            width: 3,
                          ),
                        ),
                        margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                        child: Container(
                            width: 310.0,
                            height:60.0,
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.people,
                                        color: Colors.white70,
                                        size: 35,
                                      ),
                                      SizedBox(width: 20.0,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Friends",
                                            style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),),
                                          Text("20",
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.grey[400],
                                            ),)
                                        ],
                                      )

                                    ],
                                  ),



                                ],
                              ),
                            )
                        )
                    ),


                  ),
                ),
              ),
              Expanded(
                flex:1,

                child: Container(

                  color: Colors.grey[200],

                  child: Center(

                    child:Card(
                        color: Colors.black45,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),//<-- SEE HERE
                          side: BorderSide(
                            color: Colors.black12,
                            width: 3,
                          ),
                        ),
                        margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                        child: Container(
                            width: 310.0,
                            height:60.0,
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.gamepad,
                                        color: Colors.white70,
                                        size: 35,
                                      ),
                                      SizedBox(width: 20.0,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Games",
                                            style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),),
                                          Text("CSGO",
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.grey[400],
                                            ),)
                                        ],
                                      )

                                    ],
                                  ),



                                ],
                              ),
                            )
                        )
                    ),


                  ),
                ),
              ),

            ],
          ),
          Positioned(
              top:MediaQuery.of(context).size.height*0.45,
              left: 20.0,
              right: 20.0,
              child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),//<-- SEE HERE
                    side: BorderSide(
                      color: Colors.black87,
                      width: 3,
                    ),
                  ),
                  child: Padding(
                    padding:EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            child:Column(
                              children: [
                                Text('Level',
                                  style: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 14.0
                                  ),),
                                SizedBox(height: 5.0,),
                                Text("1",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                  ),)
                              ],
                            )
                        ),

                        Container(
                          child: Column(
                              children: [
                                Text('Birthday',
                                  style: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 14.0
                                  ),),
                                SizedBox(height: 5.0,),
                                Text('April 7th',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                  ),)
                              ]),
                        ),

                        Container(
                            child:Column(
                              children: [
                                Text('Age',
                                  style: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 14.0
                                  ),),
                                SizedBox(height: 5.0,),
                                Text('19 yrs',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                  ),)
                              ],
                            )
                        ),
                      ],
                    ),
                  )
              )
          )
        ],

      ),
    );
  }
}