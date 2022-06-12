import 'dart:ui';

import 'package:flutter/material.dart';

class RegisterSignIn extends StatelessWidget {
  const RegisterSignIn({Key? key,
    required this.color,
    required this.title,
    this.onpressed
  }) : super(key: key);

  final Color color;
  final String title;
  final void Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 30,sigmaY: 30),
          child: Container(
            width: 130,
            height: 50,
            decoration: BoxDecoration(
              color: color,
              border: Border.all(width:1,color: Colors.white),
              borderRadius: BorderRadius.circular(8)
            ),
            child:  Center(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
