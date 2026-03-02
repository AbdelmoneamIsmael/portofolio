import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portofolio/core/layout/select_layout_screen.dart';
import 'package:portofolio/core/themes/colors/colors.dart';
import 'package:portofolio/core/widgets/animated_on_scroll.dart';
import 'package:portofolio/features/main/presentation/view/about_me_section.dart';
import 'package:portofolio/features/main/presentation/view/skilled_section.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SelectLayoutSCreen(
      mobileBuilder: (context) => const _mobileAbout(),
      tabletBuilder: (context) => const _tabletAbout(),
      webBuilder: (context) => const _webAbout(),
    );
  }
}

class _mobileAbout extends StatelessWidget {
  const _mobileAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.dark
            ? LightColors.backgroundColor2
            : LightColors.backgroundColor,
      ),
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 40.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const AnimatedOnScroll(
            delay: Duration(milliseconds: 200),
            offset: Offset(-50, 0),
            child: SkilledSection(),
          ),
          SizedBox(height: 40.h),
          const AnimatedOnScroll(
            delay: Duration(milliseconds: 300),
            offset: Offset(50, 0),
            child: AboutMeSection(),
          ),
        ],
      ),
    );
  }
}

class _tabletAbout extends StatelessWidget {
  const _tabletAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.dark
            ? LightColors.backgroundColor2
            : LightColors.backgroundColor,
      ),
      padding: EdgeInsets.symmetric(horizontal: 80.w, vertical: 40.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Expanded(
            child: AnimatedOnScroll(
              delay: Duration(milliseconds: 200),
              offset: Offset(-50, 0),
              child: SkilledSection(),
            ),
          ),
          SizedBox(width: 40.w),
          const Expanded(
            child: AnimatedOnScroll(
              delay: Duration(milliseconds: 300),
              offset: Offset(50, 0),
              child: AboutMeSection(),
            ),
          ),
        ],
      ),
    );
  }
}

class _webAbout extends StatelessWidget {
  const _webAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.dark
            ? LightColors.backgroundColor2
            : LightColors.backgroundColor,
      ),
      padding: EdgeInsets.symmetric(horizontal: 80.w, vertical: 40.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Expanded(
            child: AnimatedOnScroll(
              delay: Duration(milliseconds: 200),
              offset: Offset(-50, 0),
              child: SkilledSection(),
            ),
          ),
          SizedBox(width: 40.w),
          const Expanded(
            child: AnimatedOnScroll(
              delay: Duration(milliseconds: 300),
              offset: Offset(50, 0),
              child: AboutMeSection(),
            ),
          ),
        ],
      ),
    );
  }
}
