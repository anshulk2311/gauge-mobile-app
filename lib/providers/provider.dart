import 'package:gauge_app/injection/injection.dart';
import 'package:gauge_app/providers/auth/auth_provider.dart';
import 'package:gauge_app/providers/device/device_provider.dart';
import 'package:gauge_app/providers/splash/splash_provider.dart';
import 'package:provider/provider.dart';


final providers = [
  ChangeNotifierProvider<SplashProvider>(
    create: (context) => SplashProvider(),
    lazy: false,
  ),
  ChangeNotifierProvider<AuthProvider>(
    create: (context) => getIt<AuthProvider>(),
    lazy: false,
  ),
  ChangeNotifierProvider<DeviceProvider>(
    create: (context) => getIt<DeviceProvider>(),
    lazy: false,
  ),
];
