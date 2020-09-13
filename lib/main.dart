import 'package:flutter/material.dart';
import './homepage.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Center(
                    child: Container(
                      child: Image(image: AssetImage('images/foodlogo.png')),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Sign Up free account',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      TextField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          hintText: 'UserName',
                          fillColor: Colors.grey[800],
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.grey[600],
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(60.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          fillColor: Colors.grey[800],
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.grey[600],
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(60.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          fillColor: Colors.grey[800],
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.grey[600],
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(60.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Phone',
                          fillColor: Colors.grey[800],
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.grey[600],
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(60.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  margin: EdgeInsets.all(10),
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    color: Colors.blue,
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => App()),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
