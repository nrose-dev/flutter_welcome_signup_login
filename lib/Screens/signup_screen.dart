import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_welcome_signup_login/Screens/login_screen.dart';
import 'package:flutter_welcome_signup_login/constants.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

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
                  "assets/images/signup_top.png",
                  width: size.width * 0.3,
                )
            ),
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Signup".toUpperCase(),
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const SizedBox(height: 25,),
                      SvgPicture.asset(
                        "assets/icons/signup.svg",
                        height: size.height * 0.37,
                      ),
                      SizedBox(width: size.width * 1,height: 30),
                      SizedBox(
                        //width: size.width * 0.8,
                        child: Column(
                          children: [
                            Container(
                              width: size.width * 0.8,
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              decoration: BoxDecoration(
                                  color: primaryLightColor,
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              child: const TextField(
                                decoration: InputDecoration(
                                  icon: Icon(Icons.person, color: primaryColor,),
                                  hintText: "Your Name",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            SizedBox(width: size.width * 1,height: 5),
                            Container(
                              width: size.width * 0.8,
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              decoration: BoxDecoration(
                                  color: primaryLightColor,
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              child: const TextField(
                                decoration: InputDecoration(
                                  icon: Icon(Icons.email, color: primaryColor,),
                                  hintText: "Your Email",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            SizedBox(width: size.width * 1,height: 5),
                            Container(
                              width: size.width * 0.8,
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              decoration: BoxDecoration(
                                  color: primaryLightColor,
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              child: const TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.lock,
                                    color: primaryColor,
                                  ),
                                  suffixIcon: Icon(
                                    Icons.remove_red_eye_sharp,
                                    color: primaryColor,
                                  ),
                                  hintText: "Your Password",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: size.width * 1,height: 30),
                      SizedBox(
                        width: size.width * 0.8,
                        height: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: TextButton(
                            onPressed: () {},
                            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(primaryColor)),
                            child: Text(
                              "Signup".toUpperCase(),
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: size.width * 0.8,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Already have an Account?"),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context){
                                          return const LoginScreen();
                                        }
                                    )
                                  );
                                },
                                child: const Text(
                                  " Login",
                                  style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
                                )
                            )
                          ],
                        ),
                      ),
                      const Text("OR"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2,
                                      color: primaryLightColor
                                  ),
                                  shape: BoxShape.circle
                              ),
                              child: SvgPicture.asset("assets/icons/facebook.svg", height: 20, width: 20,),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2,
                                      color: primaryLightColor
                                  ),
                                  shape: BoxShape.circle
                              ),
                              child: SvgPicture.asset("assets/icons/twitter.svg", height: 20, width: 20,),
                            ),
                          ),

                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2,
                                      color: primaryLightColor
                                  ),
                                  shape: BoxShape.circle
                              ),
                              child: SvgPicture.asset("assets/icons/google-plus.svg", height: 20, width: 20,),
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                )

            ),
            Positioned(
              top: 35,
              left: 10,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(primaryLightColor),
                    ),
                    onPressed: () { Navigator.pop(context); },
                    child: const SizedBox(
                      width: 50,
                      height: 50,
                      child: Icon(Icons.arrow_back, color: primaryColor,),
                    )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
