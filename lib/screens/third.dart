import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:juzzor/common.dart';
import 'package:juzzor/generated/l10n.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  Future<void> _handleModal() async {
    return showDialog<void>(
      useSafeArea: true,
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return Dialog(
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          child: SizedBox(
            width: double.infinity,
            child: Stack(
              children: <Widget>[
                Image.asset(
                  '/images/modalBg.png',
                  height: 800,
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            '/images/LangBtn.png',
                            height: 300,
                            fit: BoxFit.cover,
                          ),
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
                              height: 300,
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
                Positioned(
                  bottom: 50,
                  left: 50,
                  child: GestureDetector(
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
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: SvgPicture.asset(
                'images/svg/SecondBg.svg',
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.of(context).pop(false),
                        child: SizedBox(
                          height: 150,
                          width: 150,
                          child: Center(
                            child: Image.asset(
                              "images/left.png",
                              fit: BoxFit.contain,
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => _handleModal(),
                        child: SizedBox(
                          height: 150,
                          width: 150,
                          child: Center(
                            child: Image.asset(
                              "images/rightBtn.png",
                              fit: BoxFit.contain,
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          SvgPicture.asset(
                            '/images/svg/GirlwPencil.svg',
                            height: MediaQuery.of(context).size.height * 0.5,
                            fit: BoxFit.fitHeight,
                          ),
                          Positioned(
                            bottom: -50,
                            child: Container(
                              alignment: Alignment.center,
                              child: Stack(
                                fit: StackFit.loose,
                                alignment: Alignment.center,
                                children: [
                                  Image.asset(
                                    '/images/YellowBtn.png',
                                    width: 350,
                                    height:
                                        MediaQuery.of(context).size.height *
                                        0.25,
                                    fit: BoxFit.contain,
                                  ),

                                  SizedBox(
                                    width: 250,
                                    child: Expanded(
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Row(
                                          children: [
                                            Text(
                                              S.of(context).playandlearn,
                                              softWrap: true,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: Adaptive.getFontSize(
                                                  context,
                                                  16,
                                                ),
                                              ),
                                            ),
                                            Image.asset(
                                              '/images/lock.png',
                                              height: 50,
                                              width: 50,
                                              fit: BoxFit.contain,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: SvgPicture.asset(
                              '/images/svg/videosGirl.svg',
                              height: MediaQuery.of(context).size.height * 0.5,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Positioned(
                            bottom: -30,
                            child: Container(
                              alignment: Alignment.center,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Image.asset(
                                    '/images/redBtn.png',
                                    height:
                                        MediaQuery.of(context).size.height *
                                        0.24,
                                    width:
                                        MediaQuery.of(context).size.width *
                                        0.24,
                                    fit: BoxFit.contain,
                                  ),
                                  Text(
                                    S.of(context).videos,
                                    softWrap: true,
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
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 150,
                        width: 150,
                        child: Center(
                          child: Image.asset(
                            "images/BottomLogo.png",
                            fit: BoxFit.contain,
                            alignment: Alignment.center,
                          ),
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
    );
  }
}
