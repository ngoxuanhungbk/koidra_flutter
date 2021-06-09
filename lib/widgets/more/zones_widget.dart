import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_krop/data/models/models.dart';
import 'package:flutter_krop/widgets/formfields/setting_text_formfield.dart';

import '../input_dialog_widget.dart';

class ZonesWidget extends StatefulWidget {
  static const ROUTE_NAME = 'ZonesWidget';
  final ValueChanged<List<ZoneModel>> callbackZones;

  ZonesWidget(this.callbackZones);

  @override
  _ZonesWidgetState createState() => _ZonesWidgetState();
}

class _ZonesWidgetState extends State<ZonesWidget> {
  List<ZoneModel> _zones = [ZoneModel('zone 1', ['a', 'b', 'c']),
  ZoneModel('zone 1', ['d', 'e', 'f'])];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(itemBuilder: (context,index){
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(_zones[index].name, style: Theme.of(context).textTheme.headline6,),
              SizedBox(height: 20,),
              SettingTextFormfied(hintText: 'Zone Name', labelText: 'Zone Name'),
              SizedBox(height: 15,),
              Text('Top Metrics', style: Theme.of(context).textTheme.subtitle1,),
              SizedBox(height: 15,),
              Container(
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[ Wrap(
                        spacing: 5,
                        runSpacing: 10,
                        children: _zones[index].topMetrics.map((item) => Container(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(48),
                              border: Border.all(color: Color(0xffc2bff8)),
                            ),
                            child: Row(children:[ Text(item, style: TextStyle(color: Color(0xff6558f5), fontSize: 16),),
                              SizedBox(width: 5), InkWell(child: Icon(Icons.close, color: Color(0xff6558f5),),
                                onTap: (){
                                  setState(() {
                                    _zones[index].topMetrics.remove(item);
                                  });
                                },)]),
                          ),
                        )).toList()
                    ),
                      SizedBox(width: 5,),
                      InkWell(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(48),
                            border: Border.all(color: Color(0xffc2bff8)),
                          ),
                          child: Row(children:[ Text('Add new', style: Theme.of(context).textTheme.subtitle1,),
                            SizedBox(width: 5,),
                            Icon(Icons.add, color: Color(0xff788896),)]),
                        ),
                        onTap: (){
                          setState(() {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return InputDialogWidget((zones){
                                    setState(() {
                                      _zones[index].topMetrics.add(zones);
                                      widget.callbackZones(_zones);
                                    });
                                  });
                                });
                          });
                        },
                      ),
                    ]
                ),
              )
            ],
          ),
        );
      },
          separatorBuilder: (context, index){
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: 100,
          child: Center(
            child: Divider(
              height: 4,
            ),
          ),
        );
          }, itemCount: 2),
    );
  }
}