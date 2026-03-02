import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portofolio/core/themes/styles/app_text_style.dart';

class NavItem extends StatefulWidget {
  const NavItem({
    super.key,
    required this.label,
    required this.isActive,
    required this.onTap,
    this.icon,
  });

  final String label;
  final bool isActive;
  final VoidCallback onTap;
  final Widget? icon;

  @override
  State<NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
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
              widget.icon ??
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
