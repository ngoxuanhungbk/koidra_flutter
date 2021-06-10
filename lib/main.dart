import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_krop/application.dart';
import 'package:flutter_krop/bloc/blocs.dart';
import 'package:flutter_krop/bloc/setting/season/season_bloc.dart';
import 'package:flutter_krop/data/datasource/mock/mock_datasource.dart';
import 'package:flutter_krop/data/repository/app_repository.dart';
import 'package:flutter_krop/data/repository/app_repository_impl.dart';
import 'package:flutter_krop/locator.dart';
import 'bloc/auth/AuthBloc.dart';

void main() async {
  AppRepository appRepository = AppRepositoryImpl(MockDatasource());
  await setupLocator();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => AuthBloc()),
      BlocProvider(create: (context) {
        final cubit = SeasonBloc(appRepository);
        return cubit;
      }),
      BlocProvider(create: (context) {
        final cubit = SiteAndZoneBloc(appRepository);
        return cubit;
      }),
    ],
    child: Application(),
  ));
}

