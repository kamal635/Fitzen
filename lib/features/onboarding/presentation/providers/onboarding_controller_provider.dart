import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Status: Current page
final StateProvider<int> onboardingPageIndexProvider = StateProvider<int>(
  (Ref<int> ref) => 0,
);

/// اProvider: PageController One
final Provider<PageController> onboardingPageControllerProvider =
    Provider<PageController>((Ref<PageController> ref) {
      final PageController controller = PageController();

      // Update the page index when the page changes
      controller.addListener(() {
        final int currentPage = controller.page?.round() ?? 0;
        ref.read(onboardingPageIndexProvider.notifier).state = currentPage;
      });

      return controller;
    });
