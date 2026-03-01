import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portofolio/core/themes/styles/app_text_style.dart';
import 'package:portofolio/features/main/presentation/widgets/skilled_widget.dart';
import 'package:portofolio/gen/assets.gen.dart';

class SkilledSection extends StatelessWidget {
  const SkilledSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(Assets.icons.skills, width: 48.w, height: 48.h),
            SizedBox(width: 20.w),
            Text(
              'skill_title'.tr(),
              style: AppTextStyles.bold(context).copyWith(fontSize: 30.sp),
            ),
          ],
        ),
        SizedBox(height: 20.h),
        SkilWidget(
          desc:
              'Flutter, Dart, Swift, Multi-Platform Development (Android & iOS),Native Mobile Integration               ',
          title: 'skill_one'.tr(),
        ),
        SkilWidget(
          desc:
              'OOP, SOLID Principles, Clean Architecture, Clean Code, MVVM, MVC, Bloc Pattern,GetX, Dependency Injection',
          title: 'skill_two'.tr(),
        ),
        SkilWidget(
          desc:
              'RESTful APIs, Firebase (Auth, Firestore, Cloud Messaging, Storage), Supabase,GraphQL, WebSocket (SignalR)',
          title: 'skill_three'.tr(),
        ),
        SkilWidget(
          desc:
              'Bloc/Cubit, GetX, Provider, Riverpod, App Flavors, Advanced UI/UX Implementation                         ',
          title: 'skill_four'.tr(),
        ),
        SkilWidget(
          desc:
              'Git/GitHub, CI/CD Pipelines, Testing & Debugging, Google Play Store, Apple App Store,AppGallery, Fastlane',
          title: 'skill_five'.tr(),
        ),
        SkilWidget(
          desc:
              'Data Structures & Algorithms, Google Maps API, Payment Gateway Integration (Stripe,PayPal), Push Notifications, Geolocation Services',
          title: 'skill_six'.tr(),
        ),
      ],
    );
  }
}
