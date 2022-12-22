// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../presentation/device-screen/connecting_device_screen.dart' as _i3;
import '../presentation/device-screen/find_device_screen.dart' as _i2;
import '../presentation/splash-screen/splash_screen.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SplashScreen.name: (routeData) {
      return _i4.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    FindDeviceScreen.name: (routeData) {
      return _i4.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.FindDeviceScreen(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    ConnectingDevice.name: (routeData) {
      return _i4.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.ConnectingDevice(),
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: 'splash',
          fullMatch: true,
        ),
        _i4.RouteConfig(
          SplashScreen.name,
          path: 'splash',
        ),
        _i4.RouteConfig(
          FindDeviceScreen.name,
          path: 'findDevice',
        ),
        _i4.RouteConfig(
          ConnectingDevice.name,
          path: 'connectingDevice',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreen extends _i4.PageRouteInfo<void> {
  const SplashScreen()
      : super(
          SplashScreen.name,
          path: 'splash',
        );

  static const String name = 'SplashScreen';
}

/// generated route for
/// [_i2.FindDeviceScreen]
class FindDeviceScreen extends _i4.PageRouteInfo<void> {
  const FindDeviceScreen()
      : super(
          FindDeviceScreen.name,
          path: 'findDevice',
        );

  static const String name = 'FindDeviceScreen';
}

/// generated route for
/// [_i3.ConnectingDevice]
class ConnectingDevice extends _i4.PageRouteInfo<void> {
  const ConnectingDevice()
      : super(
          ConnectingDevice.name,
          path: 'connectingDevice',
        );

  static const String name = 'ConnectingDevice';
}
