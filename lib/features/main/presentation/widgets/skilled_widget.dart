import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' hide DeviceType;
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portofolio/core/const/app_const.dart';
import 'package:portofolio/core/const/enums.dart';
import 'package:portofolio/core/themes/styles/app_text_style.dart';
import 'package:portofolio/core/widgets/glass_container.dart';

class SkilWidget extends StatefulWidget {
  const SkilWidget({super.key, required this.title, required this.desc});
  final String title, desc;

  @override
  State<SkilWidget> createState() => _SkilWidgetState();
}

class _SkilWidgetState extends State<SkilWidget>
    with SingleTickerProviderStateMixin {
  bool _isHovered = false;
  late AnimationController _controller;
  late Animation<double> _rotationAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _rotationAnimation = Tween<double>(
      begin: 0.0,
      end: 0.1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 1.05,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() => _isHovered = true);
        _controller.forward();
      },
      onExit: (_) {
        setState(() => _isHovered = false);
        _controller.reverse();
      },
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Transform.scale(
            scale: _scaleAnimation.value,
            child:
                GlassContainer(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.w,
                        vertical: 15.h,
                      ),
                      borderRadius: BorderRadius.circular(15.r),
                      blur: 8.0,
                      opacity: 0.1,
                      borderWidth: 1.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Transform.rotate(
                                angle: _rotationAnimation.value,
                                child: Text(
                                  '•   ',
                                  style: AppTextStyles.bold(context).copyWith(
                                    fontSize: 20.sp,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  widget.title,
                                  style: AppTextStyles.bold(context).copyWith(
                                    fontSize: switch (kDeviceType) {
                                      DeviceType.mobile => 16.sp,
                                      DeviceType.tablet => 20.sp,
                                      DeviceType.web => 20.sp,
                                    },
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            widget.desc,
                            textAlign: TextAlign.start,
                            style: AppTextStyles.medium(context).copyWith(
                              fontSize: switch (kDeviceType) {
                                DeviceType.mobile => 14.sp,
                                DeviceType.tablet => 16.sp,
                                DeviceType.web => 16.sp,
                              },
                              height: 1.3,
                            ),
                          ),
                        ],
                      ),
                    )
                    .animate(target: _isHovered ? 1 : 0)
                    .shimmer(
                      delay: const Duration(milliseconds: 100),
                      duration: const Duration(milliseconds: 800),
                      color: Theme.of(context).primaryColor.withOpacity(0.1),
                    ),
          );
        },
      ),
    );
  }
}
