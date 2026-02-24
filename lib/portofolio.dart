import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/bloc/app/app_cubit.dart';
import 'core/bloc/auth/auth_cubit.dart';
import 'core/layout/mobile_layout_screen/mobile_layout_screen.dart';
import 'core/layout/select_layout_screen.dart';
import 'core/layout/tablet_layout_screen/tablet_layout_screen.dart.dart';
import 'core/layout/web_layout_screen/web_layout_screen.dart';

class Portofolio extends StatelessWidget {
  const Portofolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AppCubit()),
        BlocProvider(create: (context) => AuthCubit()),
      ],
      child: SelectLayoutSCreen(
        mobileBuilder: (context) => const MobileLayOut(),
        tabletBuilder: (context) => const TabletLayOut(),
        webBuilder: (context) => const WebLayOut(),
      ),
    );
  }
}
