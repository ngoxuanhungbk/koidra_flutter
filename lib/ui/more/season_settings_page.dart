import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_krop/widgets/cultivation_widget.dart';
import 'package:flutter_krop/widgets/test_widget.dart';

class SeasonSettingsPage extends StatefulWidget {
  static const ROUTE_NAME = 'SeasonSettingsPage';
  @override
  _SeasonSettingsPageState createState() => _SeasonSettingsPageState();
}

class _SeasonSettingsPageState extends State<SeasonSettingsPage> with SingleTickerProviderStateMixin {

  List<Widget> tabs = [
    CultivationWidget(),
    TabViewList(title: 'Tab3'),
    TabViewList(title: 'Tab3'),
    TabViewList(title: 'Tab4'),
  ];
  TabController controller;
  @override
  void initState() {
    super.initState();
    controller = new TabController(length: tabs.length, vsync: this);
    controller.addListener(() {
      setState(() {
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Season Settings'),
        actions: [
          InkResponse(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: Text('Back', style: TextStyle(fontSize: 18, color: Color(
                        0xff6558f5)),),
                    onTap: (){},
                  ),
                  Container(height: 2,
                  width: 40,
                  color: Color(0xffc2bff8))
                ],
              ),
            ),
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              height: 70,
              child: TabBar(
                indicatorColor: Color(0xff6558f5),
                indicatorWeight: 4.0,
                indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
                controller: controller,
                labelColor: Color(0xff6558f5),
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(text: "Cultivation"),
                  Tab(text: "Crop"),
                  Tab(text: "Operational"),
                  Tab(text: "Climate Control"),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: Container(
                child: TabBarView(
                  controller: controller,
                  children: tabs.map((tab) => tab).toList(),
                ),
              ),
            ),
            Container(height: 100,
            color: Color(0xfff7f9fa),
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width:150,
                  child: InkWell(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          child: Text('Cancel', style: TextStyle(fontSize: 18, color: Color(
                              0xff6558f5)),),
                          onTap: (){},
                        ),
                        Container(height: 2,
                            width: 60,
                            color: Color(0xffc2bff8))
                      ],
                    ),
                  ),
                ),
                ElevatedButton(onPressed: (){}, child: Text('Save',
                style: Theme.of(context).textTheme.button,),
                style: ElevatedButton.styleFrom(minimumSize: Size(150, 50),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ), primary: Color(0xff6558f5)),)
              ],
            ),)
          ],
        ),
      ),
    );
  }
}
class TabViewList extends StatefulWidget {
  final String title;
  TabViewList({@required this.title});
  _TabViewListState createState() => _TabViewListState();
}

class _TabViewListState extends State<TabViewList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        primary: true,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            trailing: Icon(Icons.access_alarm),
            leading: Icon(Icons.accessibility_new),
            title: Text('${widget.title}'),
            subtitle: Text("Flutter Tutorial"),
          );
        },
      ),
    );
  }
}