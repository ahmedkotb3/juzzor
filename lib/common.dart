import 'package:flutter/material.dart';
import 'package:juzzor/generated/l10n.dart';

class Adaptive {
  static Map<String, double> getscreenDimenstions(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return {'width': screenWidth, 'height': screenHeight};
  }

  static double getFontSize(BuildContext context, double baseFontSize) {
    double screenWidth = MediaQuery.of(context).size.width;
    const double baseScreenWidth = 700.0; // Standard screen width
    double scaleFactor = screenWidth / baseScreenWidth;
    return baseFontSize * scaleFactor;
  }
}

Dialog newMethod(BuildContext context) {
  return Dialog(
    shadowColor: Colors.transparent,
    backgroundColor: Colors.transparent,
    child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('/images/modalBg.png'),
          fit: BoxFit.contain,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset('/images/LangBtn.png', fit: BoxFit.cover),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          '/images/langIcon.png',
                          height: 70,
                          fit: BoxFit.contain,
                        ),

                        Text(
                          S.of(context).Lang,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: Adaptive.getFontSize(context, 16),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => {},
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('/images/AccountBtn.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    S.of(context).myAccount,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: Adaptive.getFontSize(context, 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {},
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset('/images/LangBtn.png', fit: BoxFit.cover),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          '/images/langIcon.png',
                          height: 70,
                          fit: BoxFit.cover,
                        ),

                        Text(
                          S.of(context).Lang,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: Adaptive.getFontSize(context, 16),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset('/images/LangBtn.png', fit: BoxFit.cover),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          '/images/langIcon.png',
                          height: 70,
                          fit: BoxFit.cover,
                        ),

                        Text(
                          S.of(context).Lang,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: Adaptive.getFontSize(context, 16),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => {},
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        '/images/AccountBtn.png',

                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        S.of(context).myAccount,
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
          GestureDetector(
            onTap: () => Navigator.of(context).pop(false),
            child: SizedBox(
              height: 150,
              width: 150,
              child: Center(
                child: Image.asset(
                  "images/backModal.png",
                  fit: BoxFit.contain,
                  alignment: Alignment.center,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
