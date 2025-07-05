import 'package:flutter/material.dart';
import 'package:juzzor/generated/l10n.dart';
import 'package:juzzor/screens/lang.dart';

class Adaptive {
  static Map<String, double> getscreenDimenstions(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return {'width': screenWidth, 'height': screenHeight};
  }

  static double getFontSize(BuildContext context, double baseFontSize) {
    double screenWidth = MediaQuery.of(context).size.width;
    const double baseScreenWidth = 750.0; // Standard screen width
    double scaleFactor = screenWidth / baseScreenWidth;
    return baseFontSize * scaleFactor;
  }
}

Dialog bigModal(BuildContext context) {
  return Dialog(
    shadowColor: Colors.transparent,
    backgroundColor: Colors.transparent,
    child: Stack(
      children: [
        Container(
          height: Adaptive.getscreenDimenstions(context)['height']! * 0.94,
          width: Adaptive.getscreenDimenstions(context)['width']! * 0.8,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/modalBg.png'),
              fit: BoxFit.contain,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 170,
                            height: 170,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/YellowBtn.png',
                                ),
                                fit: BoxFit.contain,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                right: 18.0,
                                left: 18.0,
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                          child: Text(
                                            S.of(context).playandlearn,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: Adaptive.getFontSize(
                                                context,
                                                16,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Image.asset(
                                          'assets/images/gameIcon.png',
                                          height: 40,
                                          fit: BoxFit.cover,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                        child: GestureDetector(
                          onTap: () => {},
                          child: Container(
                            width: 170,
                            height: 170,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/redBtn.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                S.of(context).videos,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: Adaptive.getFontSize(context, 16),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 170,
                            height: 170,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/logoutBtn.png',
                                ),
                                fit: BoxFit.contain,
                              ),
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 30.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/images/HomeIcon.png',
                                        height: 30,
                                        fit: BoxFit.contain,
                                      ),

                                      Text(
                                        S.of(context).logout,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: Adaptive.getFontSize(
                                            context,
                                            16,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                        child: GestureDetector(
                          onTap: () => {},
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: 180,
                                width: 180,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/AccountBtn.png',
                                    ),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      S.of(context).myAccount,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: Adaptive.getFontSize(
                                          context,
                                          16,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'assets/images/AccountIcon.png',
                                        height: 40,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 170,
                            height: 170,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/LangBtn.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 30.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/images/langIcon.png',
                                        height: 40,
                                        fit: BoxFit.contain,
                                      ),

                                      Text(
                                        S.of(context).Lang,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: Adaptive.getFontSize(
                                            context,
                                            16,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),

        Positioned(
          bottom: 0,
          left: 0,
          child: GestureDetector(
            onTap: () => Navigator.of(context).pop(false),
            child: SizedBox(
              height: 150,
              width: 150,
              child: Center(
                child: Image.asset(
                  "images/backModal.png",
                  fit: BoxFit.contain,
                  alignment: Alignment.bottomLeft,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Dialog smallModal(BuildContext context) {
  return Dialog(
    shadowColor: Colors.transparent,
    backgroundColor: Colors.transparent,
    child: Stack(
      children: [
        Container(
          height: Adaptive.getscreenDimenstions(context)['height']! * 0.9,
          width: Adaptive.getscreenDimenstions(context)['width']! * 0.8,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/modalBg.png'),
              fit: BoxFit.contain,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Lang()),
                          );
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.4,
                          width: MediaQuery.of(context).size.width * 0.4,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/LangBtn.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 40.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/images/langIcon.png',
                                      height: 40,
                                      fit: BoxFit.contain,
                                    ),
                                    Text(
                                      S.of(context).Lang,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: Adaptive.getFontSize(
                                          context,
                                          16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: GestureDetector(
                          onTap: () => {},
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.4,
                                width: MediaQuery.of(context).size.width * 0.3,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/AccountBtn.png',
                                    ),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      S.of(context).myAccount,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: Adaptive.getFontSize(
                                          context,
                                          16,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'assets/images/AccountIcon.png',
                                        height: 40,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),

        Positioned(
          bottom: 0,
          left: 0,
          child: GestureDetector(
            onTap: () => Navigator.of(context).pop(false),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.15,
              child: Center(
                child: Image.asset(
                  "assets/images/backModal.png",
                  fit: BoxFit.contain,
                  alignment: Alignment.bottomLeft,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

String getLocalizedText(BuildContext context, String key) {
  switch (key) {
    case 'others':
      return S.of(context).others;
    case 'colors':
      return S.of(context).colors;
    case 'numbers':
      return S.of(context).numbers;
    case 'shapes':
      return S.of(context).shapes;
    case 'letters':
      return S.of(context).letters;
    default:
      return key;
  }
}

final List cat = [
  {
    'imageUrl': 'assets/images/svg/otherPerson.svg',
    'text': "others",
    'color': const Color(0xFFE25697),
  },
  {
    'imageUrl': 'assets/images/svg/shapes.svg',
    'text': "shapes",
    'color': const Color(0xFF0052A0),
  },
  {
    'imageUrl': 'assets/images/svg/colors.svg',
    'text': "colors",
    'color': const Color(0xFF7D4891),
  },
  {
    'imageUrl': 'assets/images/svg/Alphapet.svg',
    'text': "letters",
    'color': const Color(0xFFDC0039),
  },
  {
    'imageUrl': 'assets/images/svg/noPerson.svg',
    'text': "numbers",
    'color': const Color(0xFFFFBF00),
  },
];
