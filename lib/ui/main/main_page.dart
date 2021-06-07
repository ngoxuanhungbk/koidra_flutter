import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_krop/contants/ui_contants.dart';
import 'package:flutter_krop/gen/assets.gen.dart';
import 'package:flutter_krop/locator.dart';
import 'package:flutter_krop/ui/climate/climate_page.dart';
import 'package:flutter_krop/ui/climate_now/climate_now_page.dart';
import 'package:flutter_krop/ui/crop/crop_page.dart';
import 'package:flutter_krop/ui/images/images_page.dart';
import 'package:flutter_krop/ui/main/drawer_widget.dart';
import 'package:flutter_krop/ui/main/home_navigation_controller.dart';
import 'package:flutter_krop/ui/main/route.dart';
import 'package:flutter_krop/ui/operations/operations_page.dart';

class MainPage extends StatefulWidget {
  static const ROUTE_NAME = 'MainPage';

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  static const TAG = 'MainPage';
  var _scaffoldKey = new GlobalKey<ScaffoldState>();
  String routerPage = OperationsPage.ROUTE_NAME;

  @override
  Widget build(BuildContext context) {
    print("routerPage: " + routerPage);
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            child: SafeArea(
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    child: RotatedBox(
                      quarterTurns: 2,
                      child:
                          Assets.images.icMenuFold.image(width: 24, height: 24),
                    ),
                    onTap: () {
                      _scaffoldKey.currentState.openDrawer();
                    },
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(child: _buildDropdown('Site', 'Rotterdam')),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(child: _buildDropdown('Zone', 'Zone 2')),
                  SizedBox(
                    width: 16,
                  )
                ],
              ),
              bottom: false,
            ),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ], color: Colors.white),
            padding: EdgeInsets.only(bottom: 28),
          ),
          Expanded(
              child: Navigator(
            key: locator.get<HomeNavigationController>().navigationKey,
            onGenerateRoute: MainRouter.generateRoute,
            initialRoute: routerPage,
          ))
        ],
      ),
      drawer: DrawerWidget((screenRouter) {
        _pageNavigator(screenRouter);
      }),
    );
  }

  Widget _buildDropdown(String title, String content) {
    return Stack(
      children: [
        Container(
          height: 36,
          margin: EdgeInsets.only(top: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: ColorContants.grey1, width: 1)),
          padding: EdgeInsets.symmetric(horizontal: 12),
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              Expanded(
                  child: Text(
                content,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: ColorContants.grey1),
              )),
              Icon(
                Icons.arrow_drop_down_sharp,
                color: ColorContants.grey1,
              )
            ],
          ),
        ),
        Container(
          child: Text(
            title,
            style: TextStyle(
                color: ColorContants.grey1,
                fontWeight: FontWeight.w500,
                fontSize: 12),
          ),
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 4),
          margin: EdgeInsets.only(left: 8),
          height: 16,
        )
      ],
    );
  }

  void _pageNavigator(screenRouter) {
    setState(() {});
    switch (screenRouter) {
      case SCREEN_NAME.CLIMATE:
        routerPage = ClimateNowPage.ROUTE_NAME;
        break;
      case SCREEN_NAME.CLIMATE_NOW:
        routerPage = ClimateNowPage.ROUTE_NAME;
        break;
      case SCREEN_NAME.CROP:
        routerPage = CropPage.ROUTE_NAME;
        break;
      case SCREEN_NAME.OPERATIONS:
        routerPage = OperationsPage.ROUTE_NAME;
        break;
      case SCREEN_NAME.IMAGES:
        routerPage = ImagesPage.ROUTE_NAME;
        break;
    }
    setState(() {});
    Navigator.of(context).pop();
  }
}
