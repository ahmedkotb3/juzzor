import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[_buildBackground(screenSize), _buildLogo()],
        ),
      ),
    );
  }

  Widget _buildBackground(Size screenSize) {
    return Positioned.fill(
      child: SvgPicture.asset(
        'images/Gro.svg',
        width: screenSize.width,
        height: screenSize.height,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildLogo() {
    return Center(
      child: SizedBox(
        height: 550,
        width: 300,
        child: Image.asset("images/AppLogo.png", fit: BoxFit.contain),
      ),
    );
  }
}
