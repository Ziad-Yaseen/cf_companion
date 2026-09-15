import 'package:cf_companion/core/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Delta extends StatelessWidget {
  const Delta({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 920),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: (context, child) => MaterialApp.router(
        routerConfig: AppRouter.router,
      ),
    );
  }
}