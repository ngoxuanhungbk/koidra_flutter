import 'package:flutter/material.dart';
import 'package:flutter_krop/bloc/blocs.dart';
import 'package:flutter_krop/data/models/models.dart';
import 'package:flutter_krop/widgets/formfields/setting_text_formfield.dart';
import '../input_dialog_widget.dart';

class ZonesWidget extends StatefulWidget {
  static const ROUTE_NAME = 'ZonesWidget';

  final ValueChanged<List<ZoneModel>> callbackZones;
  final SiteAndZoneModel siteAndZone;
  final int index;

  ZonesWidget(this.callbackZones, this.siteAndZone,  this.index);

  @override
  _ZonesWidgetState createState() => _ZonesWidgetState();
}

class _ZonesWidgetState extends State<ZonesWidget> with AutomaticKeepAliveClientMixin {
  List<ZoneModel> zones;
  var zone;

  @override
  void initState() {
    super.initState();
    zones = [...widget.siteAndZone.zones];
    zone = ZoneModel.fromJson(zones[widget.index].toJson());


  }
  @override
  Widget build(BuildContext context) {

    super.build(context);
            return Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.siteAndZone.zones[widget.index].name, style: Theme.of(context).textTheme.headline5,),
                    SizedBox(height: 20,),
                    SettingTextFormfied(hintText: 'Zone Name', labelText: 'Zone Name'),
                    SizedBox(height: 15,),
                    Text('Top Metrics', style: Theme.of(context).textTheme.subtitle1,),
                    SizedBox(height: 15,),
                    Container(
                      child: Wrap(spacing: 5, runSpacing: 10, children: [
                        ...zone.topMetrics
                            .map((item) => Chip(label: Text(item, style: TextStyle(color: Color(0xff6558f5),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(48),
                            side: BorderSide(color: Color(0xffc2bff8)
                            ),
                          ),
                          backgroundColor: Colors.white,
                          deleteIcon: Icon(Icons.close, color: Color(0xff6558f5),),
                          onDeleted: (){
                            setState(() {
                              // siteAndZone.zones[index].topMetrics.remove(item);
                              zone.topMetrics.remove(item);
                            });
                          },
                        ))
                            .toList(),
                        Chip(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(48),
                            side: BorderSide(color: Color(0xffc2bff8)),
                          ),
                          label: Text('Add new', style: Theme.of(context).textTheme.subtitle1), deleteIcon: Icon(Icons.add, color: Color(0xff788896),),
                          backgroundColor: Colors.white,
                          onDeleted: () {
                            setState(() {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return InputDialogWidget((topMetric) {
                                      setState(() {
                                        // siteAndZone.zones[index].topMetrics.add(crop);
                                        zone.topMetrics.add(topMetric);
                                        // widget.callbackZones(zones);
                                        print('zones : ' + zone.topMetrics.toString());
                                      });
                                    });
                                  });
                            });
                          },)
                      ]),
                    )
                  ],
                ),
              );


  }

  @override
  bool get wantKeepAlive => true;
}