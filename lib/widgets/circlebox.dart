import 'package:assessment1/screens/screen2.dart';
import 'package:flutter/material.dart';

import '../core/colors.dart';

class CircleBox extends StatelessWidget {
  const CircleBox({
    super.key,
    required this.child,
    required this.ocolor,
  });
  final Icon child;
  final Color ocolor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Screen2(),
          ),
        );
      },
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: kWhitecolour,
          shape: BoxShape.circle,
          border: Border.all(
            color: ocolor,
            width: 3.0,
          ),
        ),
        child: child,
      ),
    );
  }
}
