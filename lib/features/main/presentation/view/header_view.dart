import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portofolio/core/const/app_const.dart';
import 'package:portofolio/core/layout/select_layout_screen.dart';
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
    return SelectLayoutSCreen(
      mobileBuilder: (context) =>
          _MobileHeaderView(scrollOffset: _scrollOffset),
      tabletBuilder: (context) =>
          _TabletHeaderView(scrollOffset: _scrollOffset),
      webBuilder: (context) => _WebHeaderView(scrollOffset: _scrollOffset),
    );
  }
}

class _MobileHeaderView extends StatelessWidget {
  const _MobileHeaderView({super.key, required double scrollOffset})
    : _scrollOffset = scrollOffset;

  final double _scrollOffset;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height - kAppBarHeight,
      width: MediaQuery.sizeOf(context).width,
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          SizedBox(height: 24.h),
          Expanded(
            flex: 5,
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

class _TabletHeaderView extends StatelessWidget {
  const _TabletHeaderView({super.key, required double scrollOffset})
    : _scrollOffset = scrollOffset;

  final double _scrollOffset;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height - kAppBarHeight,
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

class _WebHeaderView extends StatelessWidget {
  const _WebHeaderView({super.key, required double scrollOffset})
    : _scrollOffset = scrollOffset;

  final double _scrollOffset;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height - kAppBarHeight,
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
