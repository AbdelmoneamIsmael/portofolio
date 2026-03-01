import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portofolio/core/extentions/padding_extention.dart';
import 'package:portofolio/features/main/presentation/widgets/my_icons.dart';
import 'package:portofolio/features/main/presentation/widgets/section_title.dart';
import 'package:portofolio/gen/assets.gen.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: 'about_me_title',
          icon: Assets.icons.about,
        ),
        SizedBox(height: 20.h),
        Text(
          'about_me_desc'.tr(),
        ).withPadding(EdgeInsetsDirectional.only(start: 40.w)),
        SizedBox(height: 60.h),
        const MyIcons(),
      ],
    );
  }
}

