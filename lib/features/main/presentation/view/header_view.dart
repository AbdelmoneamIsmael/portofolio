import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portofolio/features/main/presentation/view/intro_name.dart';
import 'package:portofolio/features/main/presentation/widgets/developer_image.dart';

class HeaderSection extends StatefulWidget {
  const HeaderSection({super.key, this.scrollController});

  final ScrollController? scrollController;

  @override
  State<HeaderSection> createState() => _HeaderSectionState();
}

class _HeaderSectionState extends State<HeaderSection> {
  double _scrollOffset = 0;

  @override
  void initState() {
    super.initState();
    widget.scrollController?.addListener(_onScroll);
  }

  @override
  void dispose() {
    widget.scrollController?.removeListener(_onScroll);
    super.dispose();
  }

  void _onScroll() {
    if (widget.scrollController != null) {
      setState(() {
        _scrollOffset = widget.scrollController!.position.pixels;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height - 120.h,
      width: MediaQuery.sizeOf(context).width,
      padding: EdgeInsets.symmetric(horizontal: 80.w),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Transform.translate(
              offset: Offset(0, _scrollOffset * 0.3),
              child: const IntroName(),
            ),
          ),
          Expanded(
            flex: 5,
            child: Transform.translate(
              offset: Offset(0, -_scrollOffset * 0.2),
              child: const DEveloperImage(),
            ),
          ),
        ],
      ),
    );
  }
}
