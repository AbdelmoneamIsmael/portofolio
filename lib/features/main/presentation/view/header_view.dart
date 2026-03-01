import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portofolio/features/main/presentation/view/intro_name.dart';
import 'package:portofolio/features/main/presentation/widgets/developer_image.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height - 120.h,
      width: MediaQuery.sizeOf(context).width,
      // decoration: const BoxDecoration(color: Colors.green),
      padding: EdgeInsets.symmetric(horizontal: 80.w),
      child: const Row(
        children: [
          Expanded(flex: 3, child: IntroName()),
          Expanded(flex: 5, child: DEveloperImage()),
        ],
      ),
    );
  }
}
