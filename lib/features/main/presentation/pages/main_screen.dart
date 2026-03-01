import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portofolio/features/main/presentation/cubit/main_cubit.dart';
import 'package:portofolio/features/main/presentation/cubit/main_state.dart';
import 'package:portofolio/features/main/presentation/pages/body_view.dart';
import 'package:portofolio/features/main/presentation/pages/portofolio_app_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          BlocBuilder<MainCubit, MainState>(
            builder: (context, state) {
              return SingleChildScrollView(
                controller: context.read<MainCubit>().scrollController,
                child: BodyView(
                  scrollController: context.read<MainCubit>().scrollController,
                ),
              );
            },
          ),
          const Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: PortofolioAppBar(),
          ),
        ],
      ),
    );
  }
}
