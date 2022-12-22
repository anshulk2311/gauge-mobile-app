import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gauge_app/injection/injection.dart';
import 'package:gauge_app/providers/provider.dart';
import 'package:gauge_app/routing/router.gr.dart';
import 'package:gauge_app/utils/titles.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';


void main() {
  configureInjection(Environment.dev);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: List.from(providers),
      child: ScreenUtilInit(
        designSize: const Size(380, 720),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerDelegate: _appRouter.delegate(),
            routeInformationParser: _appRouter.defaultRouteParser(),
            title: mainScreenTitle,
          );
        },
      ),
    );
  }
}
