import 'package:fancy_snackbar/fancy_snackbar.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_welcome_signup_login/Screens/signup_screen.dart';
import 'package:flutter_welcome_signup_login/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                      "Login".toUpperCase(),
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(width: size.width * 1,height: 25),
                    SvgPicture.asset(
                      "assets/icons/login.svg",
                      height: size.height * 0.37,
                    ),
                    SizedBox(width: size.width * 1,height: 10),
                    SizedBox(
                      width: size.width * 0.8,
                      child: Column(
                        children: [
                          Container(
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
                          const SizedBox(height: 5,),
                          Container(
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
                          onPressed: () {
                            login(context);
                            /*final snackBar = SnackBar(
                              /// need to set following properties for best effect of awesome_snackbar_content
                              elevation: 0,
                              behavior: SnackBarBehavior.floating,
                              backgroundColor: Colors.transparent,
                              content: AwesomeSnackbarContent(
                                title: 'On Snap!',
                                message:'This is an example error message that will be shown in the body of snackbar!',

                                /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
                                contentType: ContentType.help,
                              ),
                            );

                            ScaffoldMessenger.of(context)
                              ..hideCurrentSnackBar()
                              ..showSnackBar(snackBar);*/

                          },
                          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(primaryColor)),
                          child: Text(
                            "Login".toUpperCase(),
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
                          const Text("Don't have an Account?"),
                          GestureDetector(
                              onTap: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context){
                                          return const SignupScreen();
                                        }
                                    )
                                );
                              },
                              child: const Text(
                                " Signup",
                                style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
                              )
                          )
                        ],
                      ),
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

login (context){

  FancySnackbar.showSnackbar(
    context,
    snackBarType: FancySnackBarType.error,
    title: "Whoops",
    message: "Invalid email! Enter a valid email and try again. \nThank you ",
    duration: 2,
    onCloseEvent: () {},
  );
}
