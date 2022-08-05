import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wordle/l10n/app_localizations.dart';
import 'package:wordle/wordle/view/view.dart';
import 'package:wordle_ui/wordle_ui.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    _initiateAnimation();
  }

  void _initiateAnimation() {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        WordlePage.route(context),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              WordleAssets.vikingsLogoPath,
              height: 84.0,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              l10n.flutter,
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              l10n.wordle,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                l10n.sponsoredBy,
                style: const TextStyle(
                  fontSize: 11,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(
                height: 29,
              ),
              Image.asset(
                WordleAssets.somnioLogoPath,
                height: 47,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
