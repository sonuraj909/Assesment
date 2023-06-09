import 'package:flutter/material.dart';

import '../core/colors.dart';
import '../core/constants.dart';

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Tommy Berns",
          style: TextStyle(
            color: backgroundcolour,
            fontSize: 18,
            fontWeight: FontWeight.w900,
          ),
        ),
        Row(
          children: [
            Text("Los Angeles"),
            kWidth5,
            Icon(
              Icons.location_on_rounded,
              color: kGreencolor,
            )
          ],
        ),
      ],
    );
  }
}
