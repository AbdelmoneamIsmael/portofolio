import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portofolio/gen/assets.gen.dart';

class MyIcons extends StatelessWidget {
  const MyIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20.w,
      runSpacing: 20.h,
      children: [
        SvgPicture.asset(Assets.icons.flutter, width: 48.w, height: 48.h),
        SvgPicture.asset(Assets.icons.dart, width: 48.w, height: 48.h),
        SvgPicture.asset(Assets.icons.swift, width: 48.w, height: 48.h),
        SvgPicture.asset(Assets.icons.firebase, width: 48.w, height: 48.h),
        SvgPicture.asset(Assets.icons.playStore, width: 48.w, height: 48.h),
        SvgPicture.asset(Assets.icons.appleStore, width: 48.w, height: 48.h),
        SvgPicture.asset(Assets.icons.xcode, width: 48.w, height: 48.h),
        SvgPicture.asset(Assets.icons.android, width: 48.w, height: 48.h),
        SvgPicture.asset(Assets.icons.apple, width: 48.w, height: 48.h),
      ],
    );
  }
}
