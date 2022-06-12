import 'dart:ui';

import 'package:flutter/material.dart';

class AltLogin extends StatelessWidget {
  const AltLogin({
    Key? key,
    required this.whichIcon
      }) : super(key: key);
  final Icon whichIcon;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 30,sigmaY: 30),
        child: Container(
          height: 70,
          width: 100,
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [
                    0.4,
                    0.9
                  ], colors: [
                Colors.white60,
                Colors.white10
              ]),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 1.5,color: Colors.white)
          ),
          child:whichIcon,
        ),
      ),

    );
  }
}
