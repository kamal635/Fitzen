import 'package:fitzen/core/constant/app_colors.dart';
import 'package:fitzen/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FitzenApp extends ConsumerWidget {
  const FitzenApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, _) {
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
  }
}
