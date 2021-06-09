import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_krop/gen/assets.gen.dart';
import 'package:flutter_krop/ui/climate/climate_page.dart';
import 'package:flutter_krop/ui/crop/crop_page.dart';
import 'package:flutter_krop/ui/images/images_page.dart';
import 'package:flutter_krop/ui/more/more_page.dart';
import 'package:flutter_krop/ui/operations/operations_page.dart';
import 'package:flutter_krop/widgets/appbar_widget.dart';
import 'package:flutter_krop/widgets/light_sensor_widget.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class HomePage extends StatefulWidget {
  static const ROUTE_NAME = 'HomePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const TAG = 'HomePage';
  PersistentTabController _controller;
  bool _hideNavBar;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
    _hideNavBar = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: AppbarWidget(),
      ),
      body: SafeArea(
        child: Column(
          children: [
            LightSensorWidget(
              onShowDetail: () {
                _displaysBottomSheet(context);
              },
            ),
            Expanded(
                child: PersistentTabView(
              context,
              controller: _controller,
              screens: _buildScreens(),
              items: _navBarsItems(),
              confineInSafeArea: true,
              backgroundColor: Color(0xffF5F7F9),
              handleAndroidBackButtonPress: true,
              resizeToAvoidBottomInset: true,
              stateManagement: true,
              navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0
                  ? 0.0
                  : kBottomNavigationBarHeight,
              hideNavigationBarWhenKeyboardShows: true,
              margin: EdgeInsets.all(0.0),
              popActionScreens: PopActionScreensType.all,
              bottomScreenMargin: 0.0,
              onWillPop: (context) async {
                await showDialog(
                  context: context,
                  useSafeArea: true,
                  builder: (context) => Container(
                    height: 50.0,
                    width: 50.0,
                    color: Colors.white,
                    child: ElevatedButton(
                      child: Text("Close"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                );
                return false;
              },
              selectedTabScreenContext: (context) {},
              hideNavigationBar: _hideNavBar,
              decoration: NavBarDecoration(
                  colorBehindNavBar: Colors.indigo,
                  borderRadius: BorderRadius.circular(00.0)),
              popAllScreensOnTapOfSelectedTab: true,
              itemAnimationProperties: ItemAnimationProperties(
                duration: Duration(milliseconds: 400),
                curve: Curves.ease,
              ),
              screenTransitionAnimation: ScreenTransitionAnimation(
                animateTabTransition: true,
                curve: Curves.ease,
                duration: Duration(milliseconds: 200),
              ),
              navBarStyle: NavBarStyle.style3,
            )),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildScreens() {
    return [
      OperationsPage(),
      CropPage(),
      ClimatePage(),
      ImagesPage(context),
      MorePage()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.bar_chart),
        title: "Ops",
        activeColorPrimary: Color(0xff523AF2),
        inactiveColorPrimary: Color(0xff8C9DAB),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: ("Crop"),
        activeColorPrimary: Color(0xff523AF2),
        inactiveColorPrimary: Color(0xff8C9DAB),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.wb_sunny),
        title: ("Climate"),
        activeColorPrimary: Color(0xff523AF2),
        inactiveColorPrimary: Color(0xff8C9DAB),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.image),
        title: ("Image"),
        activeColorPrimary: Color(0xff523AF2),
        inactiveColorPrimary: Color(0xff8C9DAB),
      ),
      PersistentBottomNavBarItem(
          icon: Icon(Icons.more_horiz),
          title: ("More"),
          activeColorPrimary: Color(0xff523AF2),
          inactiveColorPrimary: Color(0xff8C9DAB),
          onPressed: (_) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => MorePage()));
          }),
    ];
  }

  void _displaysBottomSheet(BuildContext context) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Climate Now",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(fontWeight: FontWeight.w900),
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Image.asset(
                            Assets.images.icClimateNow.path,
                            width: 18,
                            height: 18,
                            color: Color(0xff657584),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Light Sensor",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(color: Color(0xff657584)),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      " 237 μmol/m2/s",
                      style: Theme.of(context).textTheme.bodyText1,
                    )
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Image.asset(
                            Assets.images.icTemperature.path,
                            width: 18,
                            height: 18,
                            color: Color(0xff657584),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Air Temperature",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(color: Color(0xff657584)),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "28°C",
                      style: Theme.of(context).textTheme.bodyText1,
                    )
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Image.asset(
                            Assets.images.icCo2.path,
                            width: 18,
                            height: 18,
                            color: Color(0xff657584),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "CO2",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(color: Color(0xff657584)),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "950 ppm",
                      style: Theme.of(context).textTheme.bodyText1,
                    )
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Image.asset(
                            Assets.images.icRelativeHumidity.path,
                            width: 18,
                            height: 18,
                            color: Color(0xff657584),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Relative Humidity",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(color: Color(0xff657584)),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "82%",
                      style: Theme.of(context).textTheme.bodyText1,
                    )
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Image.asset(
                            Assets.images.icSun.path,
                            width: 18,
                            height: 18,
                            color: Color(0xff657584),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Outside Radiation",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(color: Color(0xff657584)),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "150 watt",
                      style: Theme.of(context).textTheme.bodyText1,
                    )
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Image.asset(
                            Assets.images.icWind.path,
                            width: 18,
                            height: 18,
                            color: Color(0xff657584),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Wind Speed",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(color: Color(0xff657584)),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "5 km/h",
                      style: Theme.of(context).textTheme.bodyText1,
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          );
        });
  }
}
