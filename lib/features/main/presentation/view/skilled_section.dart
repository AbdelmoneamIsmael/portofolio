import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portofolio/core/widgets/animated_on_scroll.dart';
import 'package:portofolio/features/main/presentation/widgets/section_title.dart';
import 'package:portofolio/features/main/presentation/widgets/skilled_widget.dart';
import 'package:portofolio/gen/assets.gen.dart';

class SkilledSection extends StatelessWidget {
  const SkilledSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AnimatedOnScroll(
          delay: const Duration(milliseconds: 200),
          offset: const Offset(0, 30),
          child: SectionTitle(title: 'skill_title', icon: Assets.icons.skills),
        ),
        SizedBox(height: 20.h),
        AnimatedOnScroll(
          delay: const Duration(milliseconds: 300),
          offset: const Offset(0, 30),
          child: SkilWidget(
            desc:
                'Flutter, Dart, Swift, Multi-Platform Development (Android & iOS),Native Mobile Integration               ',
            title: 'skill_one'.tr(),
          ),
        ),
        AnimatedOnScroll(
          delay: const Duration(milliseconds: 400),
          offset: const Offset(0, 30),
          child: SkilWidget(
            desc:
                'OOP, SOLID Principles, Clean Architecture, Clean Code, MVVM, MVC, Bloc Pattern,GetX, Dependency Injection',
            title: 'skill_two'.tr(),
          ),
        ),
        AnimatedOnScroll(
          delay: const Duration(milliseconds: 500),
          offset: const Offset(0, 30),
          child: SkilWidget(
            desc:
                'RESTful APIs, Firebase (Auth, Firestore, Cloud Messaging, Storage), Supabase,GraphQL, WebSocket (SignalR)',
            title: 'skill_three'.tr(),
          ),
        ),
        AnimatedOnScroll(
          delay: const Duration(milliseconds: 600),
          offset: const Offset(0, 30),
          child: SkilWidget(
            desc:
                'Bloc/Cubit, GetX, Provider, Riverpod, App Flavors, Advanced UI/UX Implementation                         ',
            title: 'skill_four'.tr(),
          ),
        ),
        AnimatedOnScroll(
          delay: const Duration(milliseconds: 700),
          offset: const Offset(0, 30),
          child: SkilWidget(
            desc:
                'Git/GitHub, CI/CD Pipelines, Testing & Debugging, Google Play Store, Apple App Store,AppGallery, Fastlane',
            title: 'skill_five'.tr(),
          ),
        ),
        AnimatedOnScroll(
          delay: const Duration(milliseconds: 800),
          offset: const Offset(0, 30),
          child: SkilWidget(
            desc:
                'Data Structures & Algorithms, Google Maps API, Payment Gateway Integration (Stripe,PayPal), Push Notifications, Geolocation Services',
            title: 'skill_six'.tr(),
          ),
        ),
      ],
    );
  }
}
