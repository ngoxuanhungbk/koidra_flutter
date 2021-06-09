import 'dart:developer' as developer;
import 'package:flutter/material.dart';

class MostRecentPage extends StatefulWidget {
  static const ROUTE_NAME = 'MostRecentPage';
  final List<String> recentList;

  MostRecentPage(this.recentList);

  @override
  _MostRecentPageState createState() => _MostRecentPageState();
}

class _MostRecentPageState extends State<MostRecentPage> {
  static const TAG = 'MostRecentPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text("Most Recent"),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text("Back",
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                      color: Color(0xff523AF2),
                      decoration: TextDecoration.underline)),
            ),
          )
        ],
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 16, right: 16),
          child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              scrollDirection: Axis.vertical,
              itemCount: widget.recentList.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Image.asset(
                    widget.recentList[index],
                    width: 150,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                );
              }),
        ),
      ),
    );
  }
}
