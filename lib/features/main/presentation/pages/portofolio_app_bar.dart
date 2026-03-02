import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portofolio/core/layout/select_layout_screen.dart';
import 'package:portofolio/core/themes/styles/app_text_style.dart';
import 'package:portofolio/core/widgets/glass_container.dart';
import 'package:portofolio/features/main/presentation/cubit/main_cubit.dart';
import 'package:portofolio/features/main/presentation/cubit/main_state.dart';
import 'package:portofolio/features/main/presentation/widgets/nav_item.dart';

class PortofolioAppBar extends StatelessWidget {
  const PortofolioAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        final cubit = context.read<MainCubit>();
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: 80.h + MediaQuery.of(context).viewPadding.top,
          width: MediaQuery.sizeOf(context).width,
          child: GlassContainer(
            borderRadius: BorderRadius.zero,
            blur: cubit.isScrolled ? 15.0 : 5.0,
            opacity: cubit.isScrolled ? 0.2 : 0.1,
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).viewPadding.top),
                SelectLayoutSCreen(
                  mobileBuilder: (context) {
                    return MobileAppBarViewView(cubit: cubit);
                  },
                  tabletBuilder: (context) {
                    return TabletAppBarViewView(cubit: cubit);
                  },
                  webBuilder: (context) {
                    return WebAppBarViewView(cubit: cubit);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class WebAppBarViewView extends StatelessWidget {
  const WebAppBarViewView({super.key, required this.cubit});

  final MainCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 80.w, vertical: 20.h),

      child: Row(
        spacing: 18,
        children: [
          Text(
                'full_name'.tr(),
                style: AppTextStyles.bold(context).copyWith(fontSize: 22.sp),
              )
              .animate()
              .fadeIn(duration: const Duration(milliseconds: 500))
              .slideX(begin: -0.2, end: 0),
          const Spacer(),
          NavItem(
            label: 'home'.tr(),
            isActive: cubit.activeSection == 'home',
            onTap: () => cubit.scrollToSection('home'),
          ),
          NavItem(
            label: 'about'.tr(),
            isActive: cubit.activeSection == 'about',
            onTap: () => cubit.scrollToSection('about'),
          ),
          NavItem(
            label: 'projects'.tr(),
            isActive: cubit.activeSection == 'projects',
            onTap: () => cubit.scrollToSection('projects'),
          ),
          NavItem(
            label: 'contact'.tr(),
            isActive: cubit.activeSection == 'contact',
            onTap: () => cubit.scrollToSection('contact'),
          ),
        ],
      ),
    );
  }
}

class TabletAppBarViewView extends StatelessWidget {
  const TabletAppBarViewView({super.key, required this.cubit});

  final MainCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 80.w, vertical: 20.h),

      child: Row(
        spacing: 18,
        children: [
          Text(
                'full_name'.tr(),
                style: AppTextStyles.bold(context).copyWith(fontSize: 22.sp),
              )
              .animate()
              .fadeIn(duration: const Duration(milliseconds: 500))
              .slideX(begin: -0.2, end: 0),
          const Spacer(),
          NavItem(
            label: 'home'.tr(),
            isActive: cubit.activeSection == 'home',
            onTap: () => cubit.scrollToSection('home'),
          ),
          NavItem(
            label: 'about'.tr(),
            isActive: cubit.activeSection == 'about',
            onTap: () => cubit.scrollToSection('about'),
          ),
          NavItem(
            label: 'projects'.tr(),
            isActive: cubit.activeSection == 'projects',
            onTap: () => cubit.scrollToSection('projects'),
          ),
          NavItem(
            label: 'contact'.tr(),
            isActive: cubit.activeSection == 'contact',
            onTap: () => cubit.scrollToSection('contact'),
          ),
        ],
      ),
    );
  }
}

class MobileAppBarViewView extends StatelessWidget {
  const MobileAppBarViewView({super.key, required this.cubit});

  final MainCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),

      child: Row(
        spacing: 18,
        children: [
          Text(
                'full_name'.tr(),
                style: AppTextStyles.bold(context).copyWith(fontSize: 16.sp),
              )
              .animate()
              .fadeIn(duration: const Duration(milliseconds: 500))
              .slideX(begin: -0.2, end: 0),
          const Spacer(),
          NavItem(
            label: '',
            isActive: true,

            onTap: () {
              if (context.locale.languageCode == 'en') {
                cubit.scaffoldKey.currentState?.openEndDrawer();
              } else {
                cubit.scaffoldKey.currentState?.openDrawer();
              }
            },
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
    );
  }
}
