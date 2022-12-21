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
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Positioned(
              top: 0,
              left: 0,
              width: double.infinity,
              height: size.width * 1,
              child: Image.asset(
                "assets/images/bg.png"
              ),
            ),
            SafeArea(
              child: Column(
                children: [

                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Dashboard",
                      style: TextStyle(fontWeight: FontWeight.bold, color: primaryColor, fontSize: 30),
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
                        Container(
                          child: Column(
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
                              )
                            ],
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
    );
  }
}
