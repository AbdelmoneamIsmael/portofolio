import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portofolio/core/themes/styles/app_text_style.dart';
import 'package:portofolio/core/widgets/glass_container.dart';
import 'package:portofolio/features/main/domain/entities/projects.dart';

class ProjectWidgetView extends StatefulWidget {
  const ProjectWidgetView({super.key, required this.project});
  final ProjectsEntity project;

  @override
  State<ProjectWidgetView> createState() => _ProjectWidgetViewState();
}

class _ProjectWidgetViewState extends State<ProjectWidgetView> {
  bool _isHovered = false;
  int _selectedImageIndex = 0;

  void _onImageSelected(int index) {
    setState(() {
      _selectedImageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        transform: Matrix4.identity()
          ..translate(0.0, _isHovered ? -10.0 : 0.0)
          ..scale(_isHovered ? 1.02 : 1.0),
        child:
            GlassContainer(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.w,
                    vertical: 20.h,
                  ),
                  borderRadius: BorderRadius.circular(20.r),
                  blur: 10.0,
                  opacity: 0.15,
                  borderWidth: 1.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ProjectWidgetTitle(project: widget.project),
                      SizedBox(height: 40.h),
                      SizedBox(height: 30.h),
                      SelectedIMageView(
                        project: widget.project,
                        selectedIndex: _selectedImageIndex,
                      ),
                      SizedBox(height: 40.h),
                      ListOfSCreenShots(
                        project: widget.project,
                        selectedIndex: _selectedImageIndex,
                        onImageSelected: _onImageSelected,
                      ),
                    ],
                  ),
                )
                .animate(target: _isHovered ? 1 : 0)
                .shimmer(
                  delay: const Duration(milliseconds: 200),
                  duration: const Duration(milliseconds: 1000),
                  color: Theme.of(context).primaryColor.withOpacity(0.1),
                ),
      ),
    );
  }
}

class ListOfSCreenShots extends StatelessWidget {
  const ListOfSCreenShots({
    super.key,
    required this.project,
    required this.selectedIndex,
    required this.onImageSelected,
  });

  final ProjectsEntity project;
  final int selectedIndex;
  final ValueChanged<int> onImageSelected;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 2,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: project.screenShots!.asMap().entries.map((entry) {
            final index = entry.key;
            final image = entry.value;
            final isSelected = selectedIndex == index;

            return GestureDetector(
              onTap: () => onImageSelected(index),
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  margin: EdgeInsets.only(right: 20.w),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: isSelected
                          ? Theme.of(context).primaryColor
                          : Colors.transparent,
                      width: 2.w,
                    ),
                    borderRadius: BorderRadius.circular(20.r),
                    boxShadow: isSelected
                        ? [
                            BoxShadow(
                              color: Theme.of(
                                context,
                              ).primaryColor.withOpacity(0.5),
                              blurRadius: 10,
                              spreadRadius: 2,
                            ),
                          ]
                        : null,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.r),
                    child: Image.asset(image, fit: BoxFit.scaleDown)
                        .animate(target: isSelected ? 1 : 0)
                        .scale(
                          begin: const Offset(1, 1),
                          end: const Offset(1.05, 1.05),
                        ),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class SelectedIMageView extends StatelessWidget {
  const SelectedIMageView({
    super.key,
    required this.project,
    required this.selectedIndex,
  });

  final ProjectsEntity project;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 6,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          // boxShadow: [
          //   BoxShadow(
          //     color: Theme.of(context).primaryColor.withOpacity(0.2),
          //     blurRadius: 20,
          //     spreadRadius: 5,
          //   ),
          // ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.r),
          child:
              Image.asset(
                    project.screenShots![selectedIndex],
                    fit: BoxFit.scaleDown,
                  )
                  .animate(key: ValueKey(selectedIndex))
                  .fadeIn(duration: const Duration(milliseconds: 500))
                  .scale(
                    begin: const Offset(1.1, 1.1),
                    end: const Offset(1, 1),
                  ),
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
