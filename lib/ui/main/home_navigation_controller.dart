import 'package:flutter/material.dart';

class HomeNavigationController {
  final GlobalKey<NavigatorState> _navigationKey = new GlobalKey<NavigatorState>();

  GlobalKey<NavigatorState> get navigationKey => _navigationKey;

  void pop() {
    _navigationKey.currentState.pop();
  }

  void popBool(bool _bool) {
    _navigationKey.currentState.pop(_bool);
  }

  void popData(dynamic data) {
    _navigationKey.currentState.pop(data);
  }

  void popUntil() {
    _navigationKey.currentState.popUntil((route) => route.isFirst);
  }

  Future<dynamic> navigateTo(String routeName, {dynamic arguments}) {
    return _navigationKey.currentState
        .pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> navigateReplacementTo(String routeName, {dynamic arguments}) {
    return _navigationKey.currentState
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {dynamic arguments}) {
    return _navigationKey.currentState
        .pushNamedAndRemoveUntil(routeName, (_) => false, arguments: arguments);
  }
}