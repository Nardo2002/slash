import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/home_cubit.dart';
import 'mobile_screen.dart';
import 'web_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..loadHomeData(),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (kIsWeb) {
            print('Web Screen');
            return WebScreen();
          } else {
            print('Mobile Screen');
            return const MobileScreen();
          }
        },
      ),
    );
  }
}
