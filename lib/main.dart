import 'package:auto_route/auto_route.dart';
import 'package:event/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'navigation/app.locator.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appRouter = locator<AppRouter>();
    return ScreenUtilInit(
        designSize: const Size(393, 851),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp.router(
            title: "Apptitle",
            routeInformationParser: appRouter.defaultRouteParser(),
            routerDelegate: AutoRouterDelegate(appRouter),
            color: Colors.white,
            theme: ThemeData.light(),
            debugShowCheckedModeBanner: false,
            builder: (context, child) => MediaQuery(
                data: MediaQuery.of(context).copyWith(
                  textScaler: const TextScaler.linear(1.0),
                ),
                child: child!),
          );
        });
  }
}
