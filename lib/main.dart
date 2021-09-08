import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // padding: EdgeInsets.only(top: 270),
          width: double.infinity,
          height: 1000,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(200)),
            image: DecorationImage(
              image: ExactAssetImage("assets/images/background.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 320,
                color: Colors.white.withOpacity(0.5),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.arrow_back,
                          size: 35,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Text(
                          "MY PROFILE",
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/myImage.jpg",
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Suhaib Ibraheem. Shaar",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.8),
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              getCard("Profile", Icons.person_rounded, 0),
              SizedBox(
                height: 3,
              ),
              getCard("Bayment", Icons.baby_changing_station, 0),
              SizedBox(
                height: 3,
              ),
              getCard("My Order", Icons.local_grocery_store_sharp, 0),
              SizedBox(
                height: 3,
              ),
              getCard("Language", Icons.language, 0),
              SizedBox(
                height: 3,
              ),
              getCard("Address", Icons.maps_ugc, 0),
              SizedBox(
                height: 3,
              ),
              getCard("Setting", Icons.settings, 0),
              SizedBox(
                height: 55,
              ),
              getBottomBar("Home", "Favorit", "Account","SECTION" ,Icons.home,
                  Icons.favorite, Icons.supervisor_account,Icons.all_inbox_rounded)
            ],
          ),
        ),
      ),
    );
  }

  Widget getCard(String text, IconData icon, double marginValue) {
    return Container(
      margin: EdgeInsets.only(right: marginValue),
      child: Card(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: 50,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.001),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        icon,
                        size: 40,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        text,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /*

   */
  Widget getBottomBar(String text1, String text2, String text3,String text4, IconData icon1,
      IconData icon2, IconData icon3, IconData icon4) {
    return Card(
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.black12,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Icon(
                  icon1,
                  size: 30,
                  color: Colors.black87,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  text1,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 19,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),

            Column(
              children: [
                Icon(
                  icon2,
                  size: 30,
                  color: Colors.black87,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  text2,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 19,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  icon3,
                  size: 30,
                  color: Colors.redAccent,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  text3,
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  icon4,
                  size: 30,
                  color: Colors.black87,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  text4,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 19,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
