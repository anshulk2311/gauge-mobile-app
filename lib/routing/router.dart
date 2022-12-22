// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:gauge_app/presentation/device-screen/connecting_device_screen.dart';
import 'package:gauge_app/presentation/device-screen/find_device_screen.dart';
import 'package:gauge_app/presentation/splash-screen/splash_screen.dart';

@CustomAutoRouter(
  replaceInRouteName: 'Page,Route',
  transitionsBuilder: TransitionsBuilders.fadeIn,
  routes: <AutoRoute>[
    CustomRoute(page: SplashScreen, initial: true, path: 'splash'),
    CustomRoute(page: FindDeviceScreen, initial: true, path: 'findDevice'),
    CustomRoute(page: ConnectingDevice, initial: true, path: 'connectingDevice'),
  ],
)
class $AppRouter {}
