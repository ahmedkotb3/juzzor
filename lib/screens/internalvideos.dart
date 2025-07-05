import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:juzzor/common.dart';
// https://github.com/dartbucket/flutter_youtube_integration/blob/master/lib/player.dart

class VideosInternal extends StatefulWidget {
  final dynamic category;
  const VideosInternal({super.key, required this.category});

  @override
  State<VideosInternal> createState() => _VideosInternal();
}

class _VideosInternal extends State<VideosInternal> {
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
                'assets/images/svg/videoInternal.svg',
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          for (var i in _cat)
                            if (i['text'] != widget.category['text'])
                              GestureDetector(
                                onTap:
                                    () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder:
                                            (context) =>
                                                VideosInternal(category: i),
                                      ),
                                    ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/images/svg/videosBtn.svg',
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
                                      getLocalizedText(context, i['text']),
                                      softWrap: true,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: Adaptive.getFontSize(
                                          context,
                                          14,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                        ],
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
                      Column(
                        children: [
                          // GridView.count(
                          //   crossAxisCount: 2,
                          //   crossAxisSpacing: 10,
                          //   children: [],
                          // ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: SvgPicture.asset(
                              widget.category['imageUrl'],
                              height: MediaQuery.of(context).size.height * 0.32,
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
                                      MediaQuery.of(context).size.height * 0.2,
                                  fit: BoxFit.contain,
                                  colorFilter: ColorFilter.mode(
                                    widget.category['color'],
                                    BlendMode.srcATop,
                                  ),
                                ),

                                Text(
                                  getLocalizedText(
                                    context,
                                    widget.category['text'],
                                  ),
                                  softWrap: true,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: Adaptive.getFontSize(context, 16),
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.width * 0.15,
                        child: Center(
                          child: Image.asset(
                            "assets/images/BottomLogo.png",
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
