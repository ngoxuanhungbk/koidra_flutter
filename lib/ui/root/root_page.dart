
import 'package:flutter/material.dart';
import 'package:flutter_krop/bloc/auth/AuthBloc.dart';
import 'package:flutter_krop/bloc/blocs.dart';
import 'package:flutter_krop/ui/auth/auth_page.dart';
import 'package:flutter_krop/ui/home/home_page.dart';
import 'package:flutter_krop/ui/splash/splash_page.dart';

class RootPage extends StatefulWidget {
  static const ROUTE_NAME = 'Main';

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  static const TAG = 'Main';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      BlocBuilder<AuthBloc, AuthNavigationState>(builder: (context, state) {
        print(state);
        if (state is UnAuthorized) {
          return AuthPage();
        }
        if (state is Authorized) {
          return HomePage();
        }
        return SplashPage();
      }),
    );
  }
}