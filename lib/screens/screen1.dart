import 'package:assessment1/core/colors.dart';
import 'package:assessment1/core/constants.dart';
import 'package:flutter/material.dart';

import '../widgets/circlebox.dart';
import '../widgets/personalwidget.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          kHeight,
          const Row(
            children: [
              Text(
                "Balance",
                style: TextStyle(
                  color: kGreycolor,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              kWidth5,
              Text(
                "\$567,57",
                style: TextStyle(
                  color: kBlackcolor,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          kHeight,
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleBox(
                ocolor: kGreycolor2,
                child: Icon(
                  Icons.add,
                  color: backgroundcolour,
                  size: 45,
                ),
              ),
              kWidth,
              CircleBox(
                ocolor: kGreycolor2,
                child: Icon(
                  Icons.search,
                  color: backgroundcolour,
                  size: 45,
                ),
              ),
              kWidth,
              CircleBox(
                ocolor: kGreycolor2,
                child: Icon(
                  Icons.bar_chart_rounded,
                  color: backgroundcolour,
                  size: 45,
                ),
              ),
            ],
          ),
          kHeight,
          Center(
            child: Container(
              width: screenSize.width - 20,
              height: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kGreencolor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenSize.width - 150),
                      child: Container(
                        width: 70,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: kGreycolor3,
                        ),
                        child: const Center(
                          child: Text(
                            "Card",
                            style: TextStyle(
                              color: kWhitecolour,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                    kHeight,
                    const Text(
                      "5862   0000   2556   5336",
                      style: TextStyle(
                        color: kWhitecolour,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    kHeight1,
                    const Text(
                      "Card number",
                      style: TextStyle(
                        color: kWhitecolour,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    kHeight,
                    const SizedBox(
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Tommy Berns",
                                style: TextStyle(
                                  color: kWhitecolour,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              kHeight1,
                              Text(
                                "Debit card",
                                style: TextStyle(
                                  color: kWhitecolour,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          kWidth50,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "05/25",
                                style: TextStyle(
                                  color: kWhitecolour,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              kHeight1,
                              Text(
                                "valid",
                                style: TextStyle(
                                  color: kWhitecolour,
                                  fontSize: 18,
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
              ),
            ),
          ),
          kHeight4,
          const ListElement(
            text: Text(
              'My cards',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Divider(
            color: kGreycolor,
            thickness: 1,
          ),
          kHeight1,
          const ListElement(
            text: Text(
              'Transactions',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Divider(
            color: kGreycolor,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}

class ListElement extends StatelessWidget {
  const ListElement({
    super.key,
    required this.text,
  });
  final Text text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        text,
        const Icon(
          Icons.arrow_forward_ios_rounded,
          color: kGreycolor,
        ),
      ],
    );
  }
}
