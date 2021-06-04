import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_krop/bloc/auth/AuthBloc.dart';
import 'package:flutter_krop/gen/assets.gen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatefulWidget {
  static const ROUTE_NAME = 'SplashPage';

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  static const TAG = 'SplashPage';

  @override
  void initState() {
    super.initState();
    context.read<AuthBloc>().loadConfig();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          child: Assets.images.imgSplash.image(),
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 25),
        ),
      ),
    );
  }
}
