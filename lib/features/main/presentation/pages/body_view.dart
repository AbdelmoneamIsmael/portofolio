import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portofolio/features/main/presentation/view/about_section.dart';
import 'package:portofolio/features/main/presentation/view/contact_me_section.dart';
import 'package:portofolio/features/main/presentation/view/header_view.dart';
import 'package:portofolio/features/main/presentation/view/projects.dart';

class BodyView extends StatelessWidget {
  const BodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 120.h),
        const HeaderSection(),
        const AboutSection(),
        const ProjectsView(),
        const ContactMeSection(),
      ],
    );
  }
}
