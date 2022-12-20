import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_welcome_signup_login/Screens/login_screen.dart';
import 'package:flutter_welcome_signup_login/Screens/signup_screen.dart';
import 'package:flutter_welcome_signup_login/constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SizedBox(
          height: size.height,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                  top: 0,
                  left: 0,
                  child: Image.asset(
                    "assets/images/main_top.png",
                    width: size.width * 0.3,
                  )
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  child: Image.asset(
                    "assets/images/main_bottom.png",
                    width: size.width * 0.2,
                  )
              ),
              SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      "Welcome to NRose IO",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    const SizedBox(height: 25,),
                    SvgPicture.asset(
                      "assets/icons/chat.svg",
                      height: size.height * 0.5,
                    ),
                    const SizedBox(height: 30,),
                    SizedBox(
                      width: size.width * 0.8,
                      height: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) {
                                      return const LoginScreen();
                                    }
                                )
                            );
                          },
                          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(primaryColor)),
                          child: Text(
                            "Login".toUpperCase(),
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: size.width * 1,height: 10),
                    SizedBox(
                      width: size.width * 0.8,
                      height: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context){
                                  return const SignupScreen();
                                }
                              )
                            );
                          },
                          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(primaryLightColor)),
                          child: Text(
                            "Signup".toUpperCase(),
                            style: const TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
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
