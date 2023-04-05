import 'package:flutter/material.dart';
import 'package:matchplay/main.dart';
import 'package:matchplay/profile.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[


            SizedBox(
              width: 200.0,
              height: 50.0,
            ),

            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Home Page',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 60),
                )),
            SizedBox(
              width: 200.0,
              height: 100.0,
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyApp()),
              );
            },
                child: Text("Discover Page")),

            SizedBox(
              width: 200.0,
              height: 100.0,
            ),

            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            },
                child: Text("Profile page"))


          ],
        ));
  }
}