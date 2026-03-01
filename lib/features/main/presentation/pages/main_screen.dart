import 'package:flutter/material.dart';
import 'package:portofolio/features/main/presentation/pages/body_view.dart';
import 'package:portofolio/features/main/presentation/pages/portofolio_app_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            child: BodyView(scrollController: _scrollController),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: PortofolioAppBar(scrollController: _scrollController),
          ),
        ],
      ),
    );
  }
}
