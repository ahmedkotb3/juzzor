import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:juzzor/common.dart';
import 'package:juzzor/generated/l10n.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

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
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
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
                      SizedBox(
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
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            top: -100,
                            child: Container(
                              alignment: Alignment.center,
                              child: SvgPicture.asset(
                                '/images/svg/GirlwPencil.svg',
                                height: 300,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          Container(
                            alignment: Alignment.center,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    '/images/YellowBtn.png',
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
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
                              ],
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   height: 300,
                      //   width: 300,
                      //   child: Center(
                      //     child: SvgPicture.asset(
                      //       "images/svg/Play.svg",
                      //       fit: BoxFit.contain,
                      //       alignment: Alignment.center,
                      //     ),
                      //   ),
                      // ),
                      SizedBox(
                        height: 300,
                        width: 300,
                        child: Center(
                          child: SvgPicture.asset(
                            "images/svg/videos.svg",
                            fit: BoxFit.contain,
                            alignment: Alignment.center,
                          ),
                        ),
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
