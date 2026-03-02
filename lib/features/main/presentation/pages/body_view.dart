import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portofolio/core/const/app_const.dart';
import 'package:portofolio/features/main/presentation/cubit/main_cubit.dart';
import 'package:portofolio/features/main/presentation/cubit/main_state.dart';
import 'package:portofolio/features/main/presentation/view/about_section.dart';
import 'package:portofolio/features/main/presentation/view/contact_me_section.dart';
import 'package:portofolio/features/main/presentation/view/header_view.dart';
import 'package:portofolio/features/main/presentation/view/projects.dart';

class BodyView extends StatelessWidget {
  const BodyView({super.key, required this.scrollController});

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        final cubit = context.read<MainCubit>();
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: kAppBarHeight),
            HeaderSection(key: cubit.homeKey),
            AboutSection(key: cubit.aboutKey),
            ProjectsView(key: cubit.projectsKey),
            ContactMeSection(key: cubit.contactKey),
            SizedBox(height: 20.h),
          ],
        );
      },
    );
  }
}
