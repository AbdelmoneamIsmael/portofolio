import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portofolio/core/themes/colors/colors.dart';
import 'package:portofolio/features/main/presentation/view/about_me_section.dart';
import 'package:portofolio/features/main/presentation/view/skilled_section.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

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
          const Expanded(child: SkilledSection()),
          SizedBox(width: 40.w),

          const Expanded(child: AboutMeSection()),
        ],
      ),
    );
  }
}
