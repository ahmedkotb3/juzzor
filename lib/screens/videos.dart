import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:juzzor/common.dart';
import 'package:juzzor/generated/l10n.dart';

class Videos extends StatefulWidget {
  const Videos({super.key});

  @override
  State<Videos> createState() => _Videos();
}

class _Videos extends State<Videos> {
  final List _cat = [
    {
      'imageUrl': 'images/svg/otherPerson.svg',
      'text': "others",
      'color': const Color(0xFFE25697),
    },
    {
      'imageUrl': '/images/svg/shapes.svg',
      'text': "shapes",
      'color': const Color(0xFF0052A0),
    },
    {
      'imageUrl': '/images/svg/colors.svg',
      'text': "colors",
      'color': const Color(0xFF7D4891),
    },
    {
      'imageUrl': '/images/svg/Alphapet.svg',
      'text': "letters",
      'color': const Color(0xFFDC0039),
    },
    {
      'imageUrl': '/images/svg/noPerson.svg',
      'text': "numbers",
      'color': const Color(0xFFFFBF00),
    },
  ];

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

  String _getLocalizedText(BuildContext context, String key) {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: SvgPicture.asset(
                'images/svg/videosBg.svg',
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
                      for (var i in _cat)
                        Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: SvgPicture.asset(
                                i['imageUrl'],
                                height:
                                    MediaQuery.of(context).size.height * 0.32,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  SvgPicture.asset(
                                    '/images/svg/videosBtn.svg',
                                    height:
                                        MediaQuery.of(context).size.height *
                                        0.18,
                                    fit: BoxFit.contain,
                                    colorFilter: ColorFilter.mode(
                                      i['color'],
                                      BlendMode.srcATop,
                                    ),
                                  ),
                                  Text(
                                    _getLocalizedText(context, i['text']),
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
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
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
