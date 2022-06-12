import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login/widgets/alt_login.dart';
import 'package:login/widgets/input_fields.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.bottomCenter,
              stops: const [
                0.1,
                0.9
              ], colors: [
            Colors.white.withOpacity(0.8),
            Colors.purple.withOpacity(0.7)
          ])
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white.withOpacity(0.7),
        body: BackdropFilter(
          filter: ImageFilter.blur(sigmaY: 10,sigmaX: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:   [
              const Text("Hello Again!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w800
              ),),
              const SizedBox(height: 10,),
              const Text("Welcome back you've\n been missed!",
              textAlign: TextAlign.center,
              softWrap: true,
              maxLines: 2,
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w300
              ),),
              const InputFields(hint: "Enter Username",),
              InputFields(
                hint: "Enter Password",
                endicon: IconButton(
                    onPressed: (){},
                    icon: const Icon(Icons.visibility_off,color: Colors.grey,)),),
              const Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 30.0,bottom: 30),
                  child: Text(
                    "Recovery Password",
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: 45,
                child: MaterialButton(
                    onPressed: (){},
                  color: Colors.red[300],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: const Text(
                      "Sign In",
                    style:TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 15
                    ) ,),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 70,
                      height: 2,
                      decoration:  BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            stops: const [
                              0.2,
                              0.9
                            ], colors: [
                          Colors.white.withOpacity(0.2),
                          Colors.black,
                        ])
                    ),
                    ),
                    const Text("  Or continue with  "),
                    Container(
                      width: 70,
                      height: 2,
                      decoration:  BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                            stops: const [
                              0.2,
                              0.9
                            ], colors: [
                          Colors.white.withOpacity(0.2),
                          Colors.black,
                        ])
                    ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              FittedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25 ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      AltLogin(whichIcon: Icon(
                        Icons.g_mobiledata_rounded,
                        color: Colors.red,
                        size: 70,
                      )),
                      SizedBox(width: 20,),
                      AltLogin(whichIcon: Icon(
                        Icons.apple,
                        color: Colors.black,
                        size: 50,
                      )),
                      SizedBox(width: 20,),
                      AltLogin(whichIcon: Icon(
                        Icons.facebook_sharp,
                        color: Colors.blue,
                        size: 50,
                      )),
                    ],
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
