import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portafolio_web/utils/utils.dart';

class ShowGradient extends StatelessWidget {
  const ShowGradient({super.key});

  @override
  Widget build(BuildContext context) {
    final width = context.width;
    final height = context.height;

    return Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            height: height,
            width: width,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(63, 100, 234, 0.43)),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: height,
            width: height,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(255, 184, 0, 0.43)),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            height: height,
            width: width,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(233, 63, 64, 0.43)),
          ),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 120.0),
          child: Container(),
        ),
      ],
    );
  }
}
