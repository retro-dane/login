
import 'package:flutter/material.dart';
import 'package:login/screens/sign_in.dart';
import 'package:login/widgets/register_signup_button.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              stops: const [
            0.2,
            0.9
          ], colors: [
            Colors.white.withOpacity(0.7),
            Colors.purple.withOpacity(0.9)
          ])
      ),
      child: Scaffold(
        backgroundColor: Colors.white.withOpacity(0.6),
        resizeToAvoidBottomInset: true,
        body: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                child: Container(
                    width:double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      filterQuality: FilterQuality.high,
                      image: AssetImage(
                          "assets/images/brain.jpg",),
                          fit: BoxFit.cover
                      )
                    )
                  ),
              ),
            ),
            const Text("Discover the World.\nRight Now.",
              softWrap: true,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight:FontWeight.w600,
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(height:20),
            const Text("Explore all the greatness this life has to offer\nbased on your personality",
              softWrap: true,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight:FontWeight.w700,
                decoration: TextDecoration.none,
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                   RegisterSignIn(
                    color: Colors.white.withOpacity(0.8),
                    title:"Register",
                    onpressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignInPage()),
                      );
                    },
                  ),
                  RegisterSignIn(
                    color: Colors.transparent,
                    title:"Sign In",
                    onpressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignInPage()),
                      );
                    },
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
