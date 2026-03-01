// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:portofolio/core/layout/select_layout_screen.dart';

// class AppButton extends StatelessWidget {
//   const AppButton({
//     super.key,
//     required this.onPressed,
//     required this.child,
//     this.backgroundColor,
//     this.foregroundColor,
//   });
//   final VoidCallback onPressed;
//   final Widget child;
//   final Color? backgroundColor, foregroundColor;

//   @override
//   Widget build(BuildContext context) {
//     return SelectLayoutSCreen(
//       mobileBuilder: (context) => ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
//           backgroundColor: backgroundColor ?? Theme.of(context).primaryColor,

//           fixedSize: Size(double.maxFinite, 40.h),
//           foregroundColor: Colors.white,
//         ),
//         onPressed: onPressed,
//         child: child,
//       ),
//       tabletBuilder: (context) => ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
//           backgroundColor: backgroundColor ?? Theme.of(context).primaryColor,

//           fixedSize: Size(double.maxFinite, 60.h),
//           foregroundColor: Colors.white,
//         ),
//         onPressed: onPressed,
//         child: child,
//       ),
//       webBuilder: (context) => ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
//           backgroundColor: backgroundColor ?? Theme.of(context).primaryColor,

//           fixedSize: Size(double.maxFinite, 90.h),
//           foregroundColor: Colors.white,
//         ),
//         onPressed: onPressed,
//         child: child,
//       ),
//     );
//   }
// }
