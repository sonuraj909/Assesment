import 'package:assessment1/widgets/circlebox.dart';
import 'package:assessment1/widgets/personalwidget.dart';
import 'package:flutter/material.dart';

import '../core/colors.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            CircleBox(
              ocolor: kGreencolor,
              child: Icon(
                Icons.person_rounded,
                color: kGreycolor,
                size: 45,
              ),
            ),
            DetailsWidget(),
          ],
        ),
      ],
    );
  }
}
