import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wordle/home/view/view.dart';
import 'package:wordle_ui/wordle_ui.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  AnimationController? logoController;
  Animation? logoAnimation;

  @override
  void initState() {
    super.initState();
    _initiateAnimation();
  }

  void _initiateAnimation() {
    logoController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    logoController!.forward();
    logoController!.addListener(() {
      setState(() {});
    });
    logoAnimation = CurvedAnimation(
      parent: logoController!,
      curve: Curves.bounceInOut,
    );
    Timer(
      const Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(HomePage.route(context)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Powered by',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black87,
              ),
            ),
            Image.asset(
              WordleAssets.somnioLogoPath,
              height: 40,
            ),
          ],
        ),
      ),
      body: Center(
        child: Image.asset(
          WordleAssets.sLogoPath,
          height: logoAnimation == null ? 0.0 : logoAnimation!.value * 200.0,
        ),
      ),
    );
  }
}
