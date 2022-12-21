import 'package:flutter/material.dart';
import 'package:flutter_welcome_signup_login/constants.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.topLeft,
          children: <Widget>[
            Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  "assets/images/bg.png",
                  width: size.width * 1,
                  height: size.height * 0.7,
                )),
            Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(
                  "assets/images/login_bottom.png",
                  width: size.width * 0.3,
                )
            ),
            SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const Text(
                          "Dashboard",
                          style: TextStyle(fontWeight: FontWeight.bold, color: primaryColor, fontSize: 30),
                        ),
                        Container(
                          width: size.width * 0.58,
                          alignment: Alignment.centerRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  "assets/images/user.png",
                                  width: 40,
                                ),
                              ),
                            ],
                          )
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          //padding: const EdgeInsets.symmetric(horizontal: 1),
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/images/user.png",
                              width: size.width * 1,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Md Nahid Hossen Golap',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: primaryColor),
                            ),
                            Text(
                              'nahid@nrose.io',
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              '01305290983',
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        Container(
                          width: size.width * 0.45,
                          alignment: Alignment.topLeft,
                          child: const Text(
                            "Popular Products",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.blue),
                          ),
                        ),
                        Container(
                          width: size.width * 0.5,
                          alignment: Alignment.topRight,
                          child: GestureDetector(
                            onTap: () {},
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "View All",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.blue),
                                ),
                              ),
                            )
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 5,),
                    Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          //reverse: true,
                          child: Row(
                            children: [
                              Card(
                                color: const Color(0xC8FFFFFF),
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  padding: const EdgeInsets.all(5),
                                  width: 300,
                                  height: 130,
                                  child: Row(
                                    children: [
                                      Container(
                                        //padding: const EdgeInsets.symmetric(horizontal: 1),
                                        decoration: BoxDecoration(
                                          color: primaryColor,
                                          borderRadius: BorderRadius.circular(100),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset(
                                            "assets/images/user.png",
                                            width: 120,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 10,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            "Product 1",
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                          ),
                                          Text(
                                            "Product 1",
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Card(
                                color: const Color(0xC8FFFFFF),
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  padding: const EdgeInsets.all(5),
                                  width: 300,
                                  height: 130,
                                  child: Row(
                                    children: [
                                      Container(
                                        //padding: const EdgeInsets.symmetric(horizontal: 1),
                                        decoration: BoxDecoration(
                                          color: primaryColor,
                                          borderRadius: BorderRadius.circular(100),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset(
                                            "assets/images/user.png",
                                            width: 120,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 10,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            "Product 1",
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                          ),
                                          Text(
                                            "Product 1",
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}
