import 'package:flutter/material.dart';
import 'package:portofolio/core/bloc/bloc_observer.dart';
import 'package:portofolio/core/const/app_const.dart';
import 'package:portofolio/core/const/enums.dart';

class SelectLayoutSCreen extends StatelessWidget {
  const SelectLayoutSCreen({
    super.key,
    required this.mobileBuilder,
    required this.tabletBuilder,
    required this.webBuilder,
  });
  final WidgetBuilder mobileBuilder, tabletBuilder, webBuilder;
  @override
  Widget build(BuildContext context) {
    kAppBarHeight = 80 + MediaQuery.of(context).padding.top;
    return LayoutBuilder(
      builder: (ctx, constraints) {
        final double width = MediaQuery.sizeOf(ctx).width;
        if (width <= 500) {
          kDeviceType = DeviceType.mobile;
          return mobileBuilder(context);
        } else if (width <= 1070) {
          kDeviceType = DeviceType.tablet;
          return tabletBuilder(context);
        } else {
          kDeviceType = DeviceType.web;
          return webBuilder(context);
        }
      },
    );
  }
}
