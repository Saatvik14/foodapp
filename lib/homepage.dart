import 'package:flutter/material.dart';

class App extends StatelessWidget {
  String cir({String c}) {
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 4.5,
                width: MediaQuery.of(context).size.width,
                color: Colors.blue[400],
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 235),
                      child: Image(
                        image: AssetImage('images/foodlogo.png'),
                        height: 50,
                        width: 100,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.white,
                                  child: Image(
                                    image: AssetImage('images/burger.jpg'),
                                    width: 35,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  'Burger',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 28,
                          ),
                          Column(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.white,
                                child: Image(
                                  image: AssetImage('images/pizza.jpg'),
                                  width: 28,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                'Pizza',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 28,
                          ),
                          Column(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.white,
                                child: Image(
                                  image: AssetImage('images/drink.jpg'),
                                  width: 28,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                'drink',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 28,
                          ),
                          Column(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.white,
                                child: Image(
                                  image: AssetImage('images/sandwitch.jpg'),
                                  width: 28,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                'Sandwitch',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 28,
                          ),
                          Column(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.white,
                                child: Image(
                                  image: AssetImage('images/icecream.jpg'),
                                  width: 20,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                'IceCream',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
