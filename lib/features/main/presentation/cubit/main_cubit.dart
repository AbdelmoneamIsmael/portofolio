import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portofolio/core/const/app_const.dart';
import 'package:portofolio/features/main/presentation/cubit/main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(const MainState.initial()) {
    Future.delayed(const Duration(seconds: 1), () {
      initScrollListener();
    });
  }
  final ScrollController scrollController = ScrollController();
  final GlobalKey homeKey = GlobalKey();
  final GlobalKey aboutKey = GlobalKey();
  final GlobalKey projectsKey = GlobalKey();
  final GlobalKey contactKey = GlobalKey();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  bool _isScrolled = false;
  String _activeSection = 'home';

  bool get isScrolled => _isScrolled;
  String get activeSection => _activeSection;

  void initScrollListener() {
    if (scrollController.hasClients) {
      final maxScroll = scrollController.position.maxScrollExtent;

      final homeOffset = _getOffset(homeKey);
      final aboutOffset = _getOffset(aboutKey);
      final projectsOffset = _getOffset(projectsKey);
      final contactOffset = _getOffset(contactKey);

      scrollController.addListener(() {
        // final pixels = scrollController.position.pixels;
        final pixels = scrollController.offset;

        // Update scroll state
        final isScrolled = pixels > 50;
        if (_isScrolled != isScrolled) {
          _isScrolled = isScrolled;
          emit(MainState.scrolled(isScrolled));
        }

        // Determine active section
        if (maxScroll > 0) {
          if (pixels < aboutOffset) {
            _activeSection = 'home';
          } else if (pixels < projectsOffset) {
            _activeSection = 'about';
          } else if (pixels < contactOffset) {
            _activeSection = 'projects';
          }
          if (pixels >= maxScroll) {
            _activeSection = 'contact';
          }
          emit(MainState.activeSectionChanged(_activeSection));
        }
      });
    }
  }

  double _getOffset(GlobalKey key) {
    final context = key.currentContext;
    if (context == null) return 0;

    final box = context.findRenderObject() as RenderBox;
    final position = box.localToGlobal(Offset.zero);
    return position.dy;
  }

  void scrollToSection(String section) {
    final keyMap = {
      'home': homeKey,
      'about': aboutKey,
      'projects': projectsKey,
      'contact': contactKey,
    };
    _activeSection = section;
    emit(MainState.activeSectionChanged(_activeSection));

    final key = keyMap[section];
    if (key != null && key.currentContext != null) {
      Scrollable.ensureVisible(
        key.currentContext!,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOut,
      ).whenComplete(() {
        if (key != contactKey) {
          scrollController.animateTo(
            Scrollable.of(key.currentContext!).position.pixels - kAppBarHeight,
            duration: const Duration(milliseconds: 800),
            curve: Curves.easeInOut,
          );
        }
      });
    }
  }
}
