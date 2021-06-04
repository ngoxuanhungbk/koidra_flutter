import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Cubit<AuthNavigationState> {
  AuthBloc() : super(AuthNavigationState.loadConfig());

  Future loadConfig() async {
    await Future.delayed(Duration(seconds: 2));
    emit(AuthNavigationState.unAuthorized());
  }

  Future unAuthorized() async {
    await Future.delayed(Duration(seconds: 2));
    emit(AuthNavigationState.unAuthorized());
  }

  void authorized() {
    emit(AuthNavigationState.authorized());
  }

  void setState(AuthNavigationState state) {
    emit(state);
  }

  void logout(){
    emit(AuthNavigationState.unAuthorized());
  }
}
abstract class AuthNavigationState {
  factory AuthNavigationState.authorized() {
    return Authorized();
  }

  factory AuthNavigationState.unAuthorized() {
    return UnAuthorized();
  }

  factory AuthNavigationState.loadConfig() {
    return LoadConfig();
  }
}

class Authorized implements AuthNavigationState {

  Authorized();
}

class UnAuthorized implements AuthNavigationState {}

class LoadConfig implements AuthNavigationState {}