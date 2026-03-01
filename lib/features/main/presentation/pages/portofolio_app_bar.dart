import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portofolio/core/themes/styles/app_text_style.dart';
import 'package:portofolio/core/widgets/glass_container.dart';

class PortofolioAppBar extends StatefulWidget {
  const PortofolioAppBar({super.key, required this.scrollController});

  final ScrollController scrollController;

  @override
  State<PortofolioAppBar> createState() => _PortofolioAppBarState();
}

class _PortofolioAppBarState extends State<PortofolioAppBar> {
  String _activeSection = 'home';
  bool _isScrolled = false;

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(_onScroll);
    super.dispose();
  }

  void _onScroll() {
    final scrollPosition = widget.scrollController.position.pixels;
    setState(() {
      _isScrolled = scrollPosition > 50;
    });
  }

  void _scrollToSection(String section) {
    final context = this.context;
    final RenderBox? renderBox = context.findRenderObject() as RenderBox?;
    if (renderBox == null) return;

    double offset = 0;
    switch (section) {
      case 'home':
        offset = 0;
        break;
      case 'about':
        offset = MediaQuery.sizeOf(context).height - 120.h;
        break;
      case 'projects':
        offset = (MediaQuery.sizeOf(context).height - 120.h) * 2;
        break;
      case 'contact':
        offset = widget.scrollController.position.maxScrollExtent;
        break;
    }

    widget.scrollController.animateTo(
      offset,
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeInOut,
    );

    setState(() {
      _activeSection = section;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 120.h,
      width: MediaQuery.sizeOf(context).width,
      child: GlassContainer(
        padding: EdgeInsets.symmetric(horizontal: 80.w, vertical: 20.h),
        borderRadius: BorderRadius.zero,
        blur: _isScrolled ? 15.0 : 5.0,
        opacity: _isScrolled ? 0.2 : 0.1,
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
            _NavItem(
              label: 'home'.tr(),
              isActive: _activeSection == 'home',
              onTap: () => _scrollToSection('home'),
            ),
            _NavItem(
              label: 'about'.tr(),
              isActive: _activeSection == 'about',
              onTap: () => _scrollToSection('about'),
            ),
            _NavItem(
              label: 'projects'.tr(),
              isActive: _activeSection == 'projects',
              onTap: () => _scrollToSection('projects'),
            ),
            _NavItem(
              label: 'contact'.tr(),
              isActive: _activeSection == 'contact',
              onTap: () => _scrollToSection('contact'),
            ),
          ],
        ),
      ),
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
          child: Text(
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
