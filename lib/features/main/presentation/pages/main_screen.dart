import 'package:flutter/material.dart';
import 'package:portofolio/features/main/presentation/pages/body_view.dart';
import 'package:portofolio/features/main/presentation/pages/portofolio_app_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(  
      body: Stack(
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(child: BodyView()),
          Positioned(top: 0, left: 0, right: 0, child: PortofolioAppBar()),
        ],
      ),
    );
  }
}
