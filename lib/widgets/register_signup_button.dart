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
      child: Container(
        width: 130,
        height: 50,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(width:2,color: Colors.white),
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
    );
  }
}
