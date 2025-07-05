import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:juzzor/common.dart';
import 'package:juzzor/screens/internalvideos.dart';

class Videos extends StatefulWidget {
  const Videos({super.key});

  @override
  State<Videos> createState() => _Videos();
}

class _Videos extends State<Videos> {
  final _cat = cat;

  @override
  void initState() {
    super.initState();
  }

  Future<void> _handleModal() async => showDialog<void>(
    useSafeArea: true,
    context: context,
    barrierDismissible: true, // user must tap button!
    builder: (BuildContext context) => bigModal(context),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: SvgPicture.asset(
                'assets/images/svg/videosBg.svg',
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
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
                          height: MediaQuery.of(context).size.height * 0.15,
                          width: MediaQuery.of(context).size.width * 0.15,
                          child: Center(
                            child: Image.asset(
                              "assets/images/Left.png",
                              fit: BoxFit.contain,
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => _handleModal(),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.15,
                          width: MediaQuery.of(context).size.width * 0.15,
                          child: Center(
                            child: Image.asset(
                              "assets/images/rightBtn.png",
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
                      for (var i in _cat)
                        GestureDetector(
                          onTap:
                              () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (context) => VideosInternal(category: i),
                                ),
                              ),

                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: SvgPicture.asset(
                                  i['imageUrl'],
                                  height:
                                      MediaQuery.of(context).size.height * 0.31,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/images/svg/videosBtn.svg',
                                      height:
                                          MediaQuery.of(context).size.height *
                                          0.20,
                                      fit: BoxFit.contain,
                                      colorFilter: ColorFilter.mode(
                                        i['color'],
                                        BlendMode.srcATop,
                                      ),
                                    ),
                                    Text(
                                      getLocalizedText(context, i['text']),
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
                            ],
                          ),
                        ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.19,
                        width: MediaQuery.of(context).size.width * 0.19,
                        child: Center(
                          child: Image.asset(
                            "assets/images/BottomLogo.png",
                            fit: BoxFit.contain,
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
