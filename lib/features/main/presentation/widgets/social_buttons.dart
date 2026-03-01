import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portofolio/core/themes/colors/colors.dart';
class SocialButton extends StatelessWidget {
  final String icon;
  final VoidCallback onTap;
  const SocialButton({super.key, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 48.w,
        height: 48.h,
        decoration: BoxDecoration(
          color: Theme.of(context).brightness == Brightness.dark
              ? DarkColors.backgroundColor
              : LightColors.backgroundColor,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: SvgPicture.asset(
          icon,
          width: 24.w,
          height: 24.h,
          colorFilter: ColorFilter.mode(
            Theme.of(context).primaryColor,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
