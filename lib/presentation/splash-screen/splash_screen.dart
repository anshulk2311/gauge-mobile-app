import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gauge_app/providers/splash/splash_provider.dart';
import 'package:gauge_app/routing/router.gr.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    changeScreen();
  }

  changeScreen() async {
    await Future.delayed(const Duration(seconds: 2), () {});
    if (mounted) {
      AutoRouter.of(context).push(const FindDeviceScreen());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<SplashProvider>(
      builder: (context, splashState, _) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Splash"),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
