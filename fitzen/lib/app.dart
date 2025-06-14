import 'package:fitzen/core/constant/app_colors.dart';
import 'package:fitzen/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FitzenApp extends StatelessWidget {
  const FitzenApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, _) {
        return MaterialApp(
          home: OnBoardingPage(),
          theme: ThemeData(scaffoldBackgroundColor: AppColors.primary),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
