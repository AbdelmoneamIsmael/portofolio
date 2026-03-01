import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portofolio/features/main/domain/entities/projects.dart';
import 'package:portofolio/features/main/presentation/view/project_widget_view.dart';
import 'package:portofolio/features/main/presentation/widgets/section_title.dart';
import 'package:portofolio/gen/assets.gen.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 80.w, vertical: 40.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SectionTitle(title: 'projects_title', icon: Assets.icons.projects),
          SizedBox(height: 20.h),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,

            itemCount: projects.length,
            itemBuilder: (context, index) {
              return ProjectWidgetView(project: projects[index]);
            },
            separatorBuilder: (context, index) {
              return SizedBox(height: 20.h);
            },
          ),
        ],
      ),
    );
  }
}
