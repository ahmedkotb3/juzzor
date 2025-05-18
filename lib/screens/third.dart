import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:juzzor/common.dart';
import 'package:juzzor/generated/l10n.dart';
import 'package:juzzor/screens/videos.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  Future<void> _handleModal() async => showDialog<void>(
    useSafeArea: true,
    context: context,
    barrierDismissible: true, // user must tap button!
    builder: (BuildContext context) => smallModal(context),
  );

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
                            bottom: -80,
                            child: Container(
                              constraints: const BoxConstraints(maxWidth: 150),
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(8.0),
                              height: 250,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('/images/YellowBtn.png'),
                                  fit: BoxFit.contain,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        S.of(context).playandlearn,
                                        softWrap: true,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24,
                                        ),
                                      ),
                                    ),
                                    Image.asset(
                                      '/images/lock.png',
                                      height: 30,
                                      width: 30,
                                      fit: BoxFit.contain,
                                    ),
                                  ],
                                ),
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
                              child: GestureDetector(
                                onTap:
                                    () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Videos(),
                                      ),
                                    ),
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
