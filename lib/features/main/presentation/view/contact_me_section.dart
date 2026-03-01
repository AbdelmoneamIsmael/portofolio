import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portofolio/core/themes/styles/app_text_style.dart';
import 'package:portofolio/core/widgets/gradient_button.dart';
import 'package:portofolio/features/main/presentation/widgets/labeled_text_field.dart';

class ContactMeSection extends StatelessWidget {
  const ContactMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 600.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 40.h),
            Text(
              'Contact',
              textAlign: TextAlign.center,
              style: AppTextStyles.bold(context).copyWith(fontSize: 32.sp),
            ),
            SizedBox(height: 16.h),
            Text(
              "Interested in working together? Let's have a conversation.",
              textAlign: TextAlign.center,
              style: AppTextStyles.lablell(
                context,
              ).copyWith(fontSize: 16.sp, color: Colors.grey.shade600),
            ),
            SizedBox(height: 24.h),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Icon(Icons.location_on_outlined, color: Colors.grey.shade700),
            //     SizedBox(width: 8.w),
            //     Text(
            //       'San Francisco, CA',
            //       style: AppTextStyles.lablell(
            //         context,
            //       ).copyWith(fontSize: 16.sp, color: Colors.grey.shade700),
            //     ),
            //   ],
            // ),
            SizedBox(height: 40.h),
             LabeledTextField(label: 'name'.tr()),
            SizedBox(height: 24.h),
             LabeledTextField(label: 'email'.tr()),
            SizedBox(height: 24.h),
             LabeledTextField(label: 'message'.tr(), maxLines: 5),
            SizedBox(height: 40.h),
            GradientButton(text: 'send_message'.tr(), onPressed: () {}),
            SizedBox(height: 40.h),
          ],
        ),
      ),
    );
  }
}
