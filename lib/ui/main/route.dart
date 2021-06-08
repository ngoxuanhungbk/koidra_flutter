import 'package:flutter/material.dart';
import 'package:flutter_krop/ui/climate/climate_page.dart';
import 'package:flutter_krop/ui/climate_now/climate_now_page.dart';
import 'package:flutter_krop/ui/crop/crop_page.dart';
import 'package:flutter_krop/ui/images/images_page.dart';
import 'package:flutter_krop/ui/operations/operations_page.dart';

class MainRouter {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case OperationsPage.ROUTE_NAME:
        return _getPageRoute(
            routeName: OperationsPage.ROUTE_NAME, viewToShow: OperationsPage());
      case CropPage.ROUTE_NAME:
        return _getPageRoute(
            routeName: OperationsPage.ROUTE_NAME, viewToShow: CropPage());
      case ClimatePage.ROUTE_NAME:
        return _getPageRoute(
            routeName: OperationsPage.ROUTE_NAME, viewToShow: ClimatePage());
      case ClimateNowPage.ROUTE_NAME:
        return _getPageRoute(
            routeName: OperationsPage.ROUTE_NAME, viewToShow: ClimateNowPage());
      case ImagesPage.ROUTE_NAME:
        return _getPageRoute(
            routeName: OperationsPage.ROUTE_NAME, viewToShow: ImagesPage());
    }
    return _getPageRoute(
        routeName: settings.name, viewToShow: OperationsPage());
  }

  static PageRoute _getPageRoute({String routeName, Widget viewToShow}) {
    return MaterialPageRoute<void>(
        settings: RouteSettings(
          name: routeName,
        ),
        builder: (_) => viewToShow);
  }

  static PageRoute _getPageRoute2<T>({String routeName, Widget viewToShow}) {
    return MaterialPageRoute<T>(
        settings: RouteSettings(
          name: routeName,
        ),
        builder: (_) => viewToShow);
  }
}