import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_krop/ui/more/account_setting/account_setting_page.dart';
import 'package:flutter_krop/ui/more/season_settings_page.dart';
import 'package:flutter_krop/ui/more/site_and_zone_setting_page.dart';
import 'package:tuple/tuple.dart';

class MorePage extends StatefulWidget {
  static const ROUTE_NAME = 'MorePage';

  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  List<Tuple2<Icon, String>> items = [
    Tuple2(
        Icon(
          Icons.calendar_today,
          color: Color(0xff788896),
        ),
        'Season config'),
    Tuple2(
        Icon(
          Icons.settings_input_component,
          color: Color(0xff788896),
        ),
        'Size and zone settings'),
    Tuple2(
        Icon(
          Icons.person,
          color: Color(0xff788896),
        ),
        'Account settings')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('More'),
      ),
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(children: [
            Container(
              height: 300,
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    var item = items[index];
                    return InkWell(
                      onTap: () {
                        developer.log("onclick: " + index.toString());
                        index == 0
                            ? Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SeasonSettingsPage()))
                            : index == 1
                                ? Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        SiteAndZoneSettingPage()))
                                : Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        AccountSettingPage()));
                      },
                      child: Container(
                        color: Color(0xfff7f9fa),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                        child: Row(
                          children: [
                            item.item1,
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              item.item2,
                              style: Theme.of(context).textTheme.headline6,
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 15,
                    );
                  },
                  itemCount: 3),
            ),
            Spacer(),
            Text(
              '2021 by Koidra Inc',
              style: Theme.of(context).textTheme.subtitle1,
            )
          ])),
    );
  }
}
