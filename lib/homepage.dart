import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class App extends StatelessWidget {
  cir({String c, String t}) {
    return Column(
      children: <Widget>[
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.white,
          child: Image(
            image: AssetImage('images/$c.png'),
            width: 28,
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          '$t',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 13,
          ),
        ),
      ],
    );
  }

  b({String te, int co}) {
    return RaisedButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      color: Color(co),
      child: Text(
        '$te',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      textColor: Colors.white,
      onPressed: () {},
    );
  }

  star({double u}) {
    return SmoothStarRating(
        allowHalfRating: false,
        starCount: 5,
        rating: u,
        size: 20.0,
        isReadOnly: false,
        color: Colors.yellow,
        borderColor: Colors.yellow,
        spacing: 0.0);
  }

  cd({String p, String n, String r, String fp, String fn}) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left: 10.0, top: 5),
                      child: CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage('images/$p.jpg'),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      '$n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      '$r',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Image(
                image: AssetImage('images/$fp.jpg'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(
                right: 190,
              ),
              child: Text(
                '$fn',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.only(
                right: 200,
              ),
              child: star(u: 3),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 4.5,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.blue[400],
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(20),
                    ),
                  ),
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
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Container(
                                child: cir(c: 'hamburger', t: 'Burger'),
                              ),
                            ),
                            SizedBox(
                              width: 28,
                            ),
                            cir(c: 'pizza', t: 'Pizza'),
                            SizedBox(
                              width: 28,
                            ),
                            cir(c: 'soda', t: 'Drink'),
                            SizedBox(
                              width: 28,
                            ),
                            cir(c: 'sandwich', t: 'sandwich'),
                            SizedBox(
                              width: 28,
                            ),
                            cir(c: 'ice-cream', t: 'IceCream')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Container(
                          child: b(te: 'CAKE', co: 0xFFFF80AB),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      b(te: 'PIE', co: 0xFFB388FF),
                      SizedBox(
                        width: 15,
                      ),
                      b(te: 'ICE CREAM', co: 0xFF82B1FF),
                      SizedBox(
                        width: 15,
                      ),
                      b(te: 'CANNOLI', co: 0xFF64FFDA)
                    ],
                  ),
                ),
                SizedBox(
                  height: 27,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 160),
                  child: Text(
                    'Most Popular',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: MediaQuery.of(context).size.width / 1.1,
                    height: MediaQuery.of(context).size.height / 2,
                    child: cd(
                        p: 'chef',
                        n: 'Sanjeev Kapoor',
                        r: '160',
                        fp: 'cardpizza',
                        fn: 'Pizza Margherita')),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: MediaQuery.of(context).size.height / 2,
                  child: cd(
                      p: 'chef',
                      n: 'Sanjeev Kapoor',
                      r: '160',
                      fp: 'cardpizza',
                      fn: 'Pizza Margherita'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
