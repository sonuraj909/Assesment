import 'package:assessment1/core/constants.dart';
import 'package:assessment1/widgets/circlebox.dart';
import 'package:assessment1/widgets/personalwidget.dart';
import 'package:flutter/material.dart';

import '../core/colors.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: ListView(
        children: [
          Column(
            children: [
              const Row(
                children: [
                  CircleBox(
                    ocolor: kGreencolor,
                    child: Icon(
                      Icons.person_rounded,
                      color: kGreycolor,
                      size: 45,
                    ),
                  ),
                  kWidth,
                  DetailsWidget(),
                ],
              ),
              kHeight4,
              Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                      color: kWhitecolour,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: backgroundcolour,
                        width: 2.0,
                      ),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Balance",
                          style: TextStyle(
                            color: kGreycolor,
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        kHeight1,
                        Text(
                          "\$567,57",
                          style: TextStyle(
                            color: kBlackcolor,
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const CircleBox(
                    ocolor: kGreycolor,
                    child: Icon(
                      Icons.bar_chart_rounded,
                      color: backgroundcolour,
                      size: 45,
                    ),
                  ),
                ],
              ),
              kHeight6,
              const SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "🟢 INCOMES",
                          style: TextStyle(
                            color: kBlackcolor,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        kHeight1,
                        Text(
                          "309",
                          style: TextStyle(
                            color: kBlackcolor,
                            fontSize: 35,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "🟢 EXPENSES",
                          style: TextStyle(
                            color: kBlackcolor,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        kHeight1,
                        Text(
                          "234",
                          style: TextStyle(
                            color: kBlackcolor,
                            fontSize: 35,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
