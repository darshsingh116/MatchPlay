import 'package:flutter/material.dart';
import 'package:matchplay/home.dart';
import 'package:matchplay/main.dart';

class signup extends StatelessWidget {
  const signup({Key? key}) : super(key: key);

  static const String _title = 'Login';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/1.jpg"),
              fit: BoxFit.cover,

            ),
          ),
        child: Padding(
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
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        color: Colors.white,
                          fontFamily: "Poppins",
                          fontSize: 60),
                    )),
                SizedBox(
                  width: 200.0,
                  height: 100.0,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    //forgot password screen
                  },
                  child: const Text('Forgot Password',),
                ),
                Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(11714579),
                          textStyle: TextStyle(
                              fontSize: 30,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold)),
                      child: Text('Login'),
                      onPressed: () {

                        if(nameController.text=="blackbuck" && passwordController.text=="12345"){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const home()),
                          );
                        }



                        print(nameController.text);
                        print(passwordController.text);
                      },
                    )
                ),
                Row(
                  children: <Widget>[
                    const Text('Don\'t have an account?',
                    style: TextStyle(color: Colors.white),),
                    TextButton(
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                        color: Colors.white,
                        fontSize: 20),
                      ),
                      onPressed: () {
                        //signup
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
            )),
      ),
    );
  }
}