import 'package:flutter/material.dart';
import 'package:juzzor/common.dart';
import 'package:juzzor/generated/l10n.dart';
import 'package:juzzor/screens/third.dart';
import 'package:intl/intl.dart';

class Lang extends StatelessWidget {
  const Lang({super.key});
  void toThirdScreen(BuildContext context) {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (context) => const ThirdScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(
                "assets/images/langLeft.png",
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width / 2,
                fit: BoxFit.fill,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigate to the second screen
                      toThirdScreen(context);
                      // and load the Arabic locale
                      S.load(Locale('ar'));
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/images/YellowBtn.png',
                            height: MediaQuery.of(context).size.height / 3,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Container(
                          alignment: Alignment.topCenter,
                          child: Text(
                            'عربي',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: Adaptive.getFontSize(context, 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigate to the second screen
                      toThirdScreen(context);
                      // and load the Arabic locale
                      S.load(Locale('en'));
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/images/EnBg.png',
                            height: MediaQuery.of(context).size.height / 3,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            'انجليزى',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: Adaptive.getFontSize(context, 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
