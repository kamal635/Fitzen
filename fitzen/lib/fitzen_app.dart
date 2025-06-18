import 'package:fitzen/core/constant/app_colors.dart';
import 'package:fitzen/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FitzenApp extends ConsumerWidget {
  const FitzenApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);

    return LayoutBuilder(
      builder: (context, constraints) {
        // Determine the current size
        final screenWidth = constraints.maxWidth;

        // choose designSize based on device size
        late Size designSize;

        if (screenWidth >= 1000) {
          //  LapTop or large Tablet
          designSize = const Size(1280, 800);
        } else if (screenWidth >= 600) {
          //  Medium Tablet
          designSize = const Size(800, 1280);
        } else {
          // Mobile
          designSize = const Size(412, 915);
        }

        return ScreenUtilInit(
          designSize: designSize,
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return MaterialApp.router(
              routerConfig: appRouter,
              theme: ThemeData(
                scaffoldBackgroundColor: AppColors.primary,
                brightness: Brightness.dark,
              ),
              debugShowCheckedModeBanner: false,
            );
          },
        );
      },
    );
  }
}
