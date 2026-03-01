import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portofolio/core/extentions/padding_extention.dart';
import 'package:portofolio/core/themes/styles/app_text_style.dart';
import 'package:portofolio/features/main/domain/entities/projects.dart';

class ProjectWidgetView extends StatelessWidget {
  const ProjectWidgetView({super.key, required this.project});
  final ProjectsEntity project;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ProjectWidgetTitle(project: project),
          SizedBox(height: 40.h),

          SizedBox(height: 30.h),
          SelectedIMageView(project: project),

          SizedBox(height: 40.h),
          ListOfSCreenShots(project: project, selectedIndex: 0),
        ],
      ),
    );
  }
}

class ListOfSCreenShots extends StatelessWidget {
  const ListOfSCreenShots({
    super.key,
    required this.project,
    required this.selectedIndex,
  });

  final ProjectsEntity project;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 2,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,

        child: Row(
          children: project.screenShots!.map((e) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              margin: EdgeInsets.only(right: 20.w),
              decoration: BoxDecoration(
                border: Border.all(
                  color: selectedIndex == project.screenShots!.indexOf(e)
                      ? Theme.of(context).primaryColor
                      : Colors.transparent,
                  width: 2.w,
                ),
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.r),
                child: Image.asset(e, fit: BoxFit.scaleDown),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class SelectedIMageView extends StatelessWidget {
  const SelectedIMageView({super.key, required this.project});

  final ProjectsEntity project;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 6,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.r),
          child: Image.asset(project.screenShots![0], fit: BoxFit.scaleDown),
        ),
      ),
    );
  }
}

class ProjectWidgetTitle extends StatelessWidget {
  const ProjectWidgetTitle({super.key, required this.project});

  final ProjectsEntity project;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.r),
          child: Image.asset(
            project.image!,
            width: 60.w,
            height: 60.w,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 20.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              project.title!,
              style: AppTextStyles.bold(context).copyWith(fontSize: 40.sp),
            ),
            const SizedBox(height: 10),
            Text(
              project.description!,
              style: AppTextStyles.regular(context).copyWith(fontSize: 20.sp),
            ),
          ],
        ),
      ],
    );
  }
}
