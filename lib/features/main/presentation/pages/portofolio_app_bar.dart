import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portofolio/core/themes/styles/app_text_style.dart';
import 'package:portofolio/core/widgets/glass_container.dart';
import 'package:portofolio/features/main/presentation/cubit/main_cubit.dart';
import 'package:portofolio/features/main/presentation/cubit/main_state.dart';

class PortofolioAppBar extends StatelessWidget {
  const PortofolioAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        final cubit = context.read<MainCubit>();
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: 80.h,
          width: MediaQuery.sizeOf(context).width,
          child: GlassContainer(
            padding: EdgeInsets.symmetric(horizontal: 80.w, vertical: 20.h),
            borderRadius: BorderRadius.zero,
            blur: cubit.isScrolled ? 15.0 : 5.0,
            opacity: cubit.isScrolled ? 0.2 : 0.1,
            child: Row(
              spacing: 18,
              children: [
                Text(
                      'full_name'.tr(),
                      style: AppTextStyles.bold(
                        context,
                      ).copyWith(fontSize: 22.sp),
                    )
                    .animate()
                    .fadeIn(duration: const Duration(milliseconds: 500))
                    .slideX(begin: -0.2, end: 0),
                const Spacer(),
                _NavItem(
                  label: 'home'.tr(),
                  isActive: cubit.activeSection == 'home',
                  onTap: () => cubit.scrollToSection('home'),
                ),
                _NavItem(
                  label: 'about'.tr(),
                  isActive: cubit.activeSection == 'about',
                  onTap: () => cubit.scrollToSection('about'),
                ),
                _NavItem(
                  label: 'projects'.tr(),
                  isActive: cubit.activeSection == 'projects',
                  onTap: () => cubit.scrollToSection('projects'),
                ),
                _NavItem(
                  label: 'contact'.tr(),
                  isActive: cubit.activeSection == 'contact',
                  onTap: () => cubit.scrollToSection('contact'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _NavItem extends StatefulWidget {
  const _NavItem({
    required this.label,
    required this.isActive,
    required this.onTap,
  });

  final String label;
  final bool isActive;
  final VoidCallback onTap;

  @override
  State<_NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<_NavItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          decoration: BoxDecoration(
            color: widget.isActive
                ? Theme.of(context).primaryColor.withOpacity(0.2)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(8.r),
            border: widget.isActive
                ? Border.all(
                    color: Theme.of(context).primaryColor.withOpacity(0.5),
                    width: 1,
                  )
                : null,
          ),
          child:
              Text(
                    widget.label,
                    style: AppTextStyles.bold(context).copyWith(
                      fontSize: 18.sp,
                      color: widget.isActive
                          ? Theme.of(context).primaryColor
                          : Theme.of(context).textTheme.bodyLarge?.color,
                    ),
                  )
                  .animate(target: _isHovered ? 1 : 0)
                  .scale(begin: const Offset(1, 1), end: const Offset(1.1, 1.1))
                  .fade(begin: 1, end: 0.8),
        ),
      ),
    );
  }
}
