import 'package:fitzen/core/constant/app_colors.dart';
import 'package:fitzen/core/constant/app_fonts.dart';
import 'package:fitzen/features/onboarding/data/models/onboarding_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingPageBody extends StatefulWidget {
  const OnBoardingPageBody({super.key});

  @override
  State<OnBoardingPageBody> createState() => _OnBoardingPageBodyState();
}

class _OnBoardingPageBodyState extends State<OnBoardingPageBody> {
  final PageController _controller = PageController();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: PageView.builder(
            controller: _controller,
            itemCount: listOnboarding.length,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
            itemBuilder: (context, i) {
              final item = listOnboarding[i];
              return Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AspectRatio(
                    aspectRatio: 12 / 9,
                    child: Image.asset(item.image),
                  ),

                  Text(
                    item.tilte,
                    style: AppTextStyles.headline2,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    item.subTitle,
                    style: AppTextStyles.body2,
                    textAlign: TextAlign.center,
                  ),
                ],
              );
            },
          ),
        ),
        SizedBox(height: 20.h),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: SlideEffect(
                  dotWidth: 10.w,
                  dotHeight: 10.h,
                  paintStyle: PaintingStyle.fill,
                  dotColor: AppColors.grey,
                  activeDotColor: AppColors.secondary,
                ),
                onDotClicked: (index) {},
              ),

              Spacer(),

              RawMaterialButton(
                onPressed: () {
                  if (currentPage < listOnboarding.length - 1) {
                    _controller.animateToPage(
                      currentPage + 1,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  } else {}
                },
                fillColor: AppColors.secondary,
                shape: CircleBorder(),
                padding: EdgeInsetsGeometry.all(20.r),
                child: Icon(Icons.arrow_right_alt_sharp, size: 35.h),
              ),
              SizedBox(height: 40.h),
            ],
          ),
        ),
      ],
    );
  }
}
