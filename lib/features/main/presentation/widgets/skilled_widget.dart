import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portofolio/core/extentions/padding_extention.dart';
import 'package:portofolio/core/themes/styles/app_text_style.dart';

class SkilWidget extends StatelessWidget {
  const SkilWidget({super.key, required this.title, required this.desc});
  final String title, desc;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            Row(
              children: [
                Text(
                  '•    ',
                  style: AppTextStyles.bold(context).copyWith(
                    fontSize: 20.sp,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                Text(
                  title,
                  style: AppTextStyles.bold(context).copyWith(
                    fontSize: 20.sp,
                    color: const Color.fromARGB(255, 167, 80, 77),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5.h),
            Text(
              desc,
              textAlign: TextAlign.start,
              style: AppTextStyles.medium(
                context,
              ).copyWith(fontSize: 16.sp, height: 1.3),
            ).withPadding(EdgeInsetsDirectional.only(start: 40.w)),
          ],
        ).withPadding(EdgeInsetsDirectional.only(start: 40.w, bottom: 20.h)),
      ],
    );
  }
}
