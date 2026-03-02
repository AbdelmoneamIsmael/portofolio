import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portofolio/core/themes/styles/app_text_style.dart';
import 'package:portofolio/core/widgets/animated_on_scroll.dart';
import 'package:portofolio/core/widgets/gradient_text.dart';
import 'package:portofolio/features/main/presentation/cubit/main_cubit.dart';
import 'package:portofolio/features/main/presentation/cubit/main_state.dart';
import 'package:portofolio/features/main/presentation/widgets/nav_item.dart';
import 'package:portofolio/features/main/presentation/widgets/social_buttons.dart';
import 'package:portofolio/gen/assets.gen.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        final cubit = context.read<MainCubit>();
        return Drawer(
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 40.h,
                    children: [
                      GradientText(
                        'full_name'.tr(),
                        textAlign: TextAlign.center,
                        style: AppTextStyles.semiBold(
                          context,
                        ).copyWith(fontSize: 30.sp),
                        animate: true,
                      ),
                      Column(
                        spacing: 10.h,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          NavItem(
                            label: 'home'.tr(),
                            isActive: cubit.activeSection == 'home',
                            onTap: () => cubit.scrollToSection('home'),
                          ).animate().fadeIn(
                            delay: const Duration(milliseconds: 400),
                            duration: const Duration(milliseconds: 500),
                          ),
                          NavItem(
                            label: 'about'.tr(),
                            isActive: cubit.activeSection == 'about',
                            onTap: () => cubit.scrollToSection('about'),
                          ).animate().fadeIn(
                            delay: const Duration(milliseconds: 500),
                            duration: const Duration(milliseconds: 500),
                          ),
                          NavItem(
                            label: 'projects'.tr(),
                            isActive: cubit.activeSection == 'projects',
                            onTap: () => cubit.scrollToSection('projects'),
                          ).animate().fadeIn(
                            delay: const Duration(milliseconds: 600),
                            duration: const Duration(milliseconds: 500),
                          ),
                          NavItem(
                            label: 'contact'.tr(),
                            isActive: cubit.activeSection == 'contact',
                            onTap: () => cubit.scrollToSection('contact'),
                          ).animate().fadeIn(
                            delay: const Duration(milliseconds: 700),
                            duration: const Duration(milliseconds: 500),
                          ),
                        ],
                      ),
                      const SizedBox(),
                      Column(
                        spacing: 20.h,
                        children: [
                          ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Theme.of(
                                    context,
                                  ).primaryColor,
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.r),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: SvgPicture.asset(
                                        Assets.icons.whatsapp,
                                        fit: BoxFit.scaleDown,
                                        colorFilter: const ColorFilter.mode(
                                          Colors.white,
                                          BlendMode.srcIn,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 20.w),
                                    Text('get_project'.tr()),
                                  ],
                                ),
                              )
                              .animate()
                              .shimmer(
                                delay: const Duration(milliseconds: 1000),
                                duration: const Duration(milliseconds: 1500),
                                color: Colors.white.withOpacity(0.3),
                              )
                              .animate()
                              .fadeIn(
                                delay: const Duration(milliseconds: 1000),
                                duration: const Duration(milliseconds: 500),
                              ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              foregroundColor: Theme.of(context).primaryColor,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                side: BorderSide(
                                  color: Theme.of(context).primaryColor,
                                  width: 2,
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.file_open),
                                SizedBox(width: 10.w),
                                Text('my_cv'.tr()),
                              ],
                            ),
                          ).animate().fadeIn(
                            delay: const Duration(milliseconds: 1000),
                            duration: const Duration(milliseconds: 500),
                          ),
                          AnimatedOnScroll(
                            delay: const Duration(milliseconds: 1000),
                            offset: const Offset(0, 30),
                            child: Center(
                              child: Wrap(
                                spacing: 30.w,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                alignment: WrapAlignment.center,
                                children: [
                                  SocialButton(
                                    icon: Assets.icons.github,
                                    onTap: () {},
                                  ),
                                  SocialButton(
                                    icon: Assets.icons.linkedin,
                                    onTap: () {},
                                  ),
                                  SocialButton(
                                    icon: Assets.icons.face,
                                    onTap: () {},
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
