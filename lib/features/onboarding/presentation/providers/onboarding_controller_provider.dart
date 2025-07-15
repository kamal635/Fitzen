import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Status: Current page
final onboardingPageIndexProvider = StateProvider<int>((ref) => 0);

/// اProvider: PageController One
final onboardingPageControllerProvider = Provider<PageController>((ref) {
  final controller = PageController();

  // Update the page index when the page changes
  controller.addListener(() {
    final currentPage = controller.page?.round() ?? 0;
    ref.read(onboardingPageIndexProvider.notifier).state = currentPage;
  });

  return controller;
});
