import 'package:flutter/material.dart';
import 'package:flutter_krop/bloc/blocs.dart';
import 'package:flutter_krop/data/models/models.dart';
import 'package:flutter_krop/widgets/more/operational_widget.dart';
import 'package:flutter_krop/widgets/more/site_info_widget.dart';
import 'package:flutter_krop/widgets/more/time_zone_widget.dart';
import 'package:flutter_krop/widgets/more/zones_widget.dart';

class SiteAndZoneSettingPage extends StatefulWidget {
  static const ROUTE_NAME = 'SiteAndZoneSettingPage';
  @override
  _SiteAndZoneSettingPageState createState() => _SiteAndZoneSettingPageState();
}

class _SiteAndZoneSettingPageState extends State<SiteAndZoneSettingPage> with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  SiteModel siteModel = SiteModel('', '', '', '', 0, 0, 0);
  List<String> _sensorMetrics = [];
  List<ZoneModel> _zones = [];
  List<Widget> tabs;
  TabController controller;
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    context.read<SiteAndZoneBloc>().init();
    controller = new TabController(length: 4, vsync: this);
    controller.addListener(() {
      setState(() {
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Site and zone settings'),
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
      body: BlocBuilder<SiteAndZoneBloc, SiteAndZoneState>(
          builder: (context, state) {
            return state.when((siteAndZone) =>
                Form(
                  key: _formKey,
                  child: Container(
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
                              Tab(text: "Site Info"),
                              Tab(text: "Sensor Metrics"),
                              Tab(text: "Sites"),
                              Tab(text: "Timezone"),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Expanded(
                          child: Container(
                            child: TabBarView(
                              controller: controller,
                              children: [
                                SiteInfoWidget((value){
                                  setState(() {
                                    siteModel.name = value;
                                  });
                                },(value){
                                  setState(() {
                                    siteModel.type = value;
                                  });
                                },(value){
                                  setState(() {
                                    siteModel.address = value;
                                  });
                                },(value){
                                  setState(() {
                                    siteModel.currency = value;
                                  });
                                },(value){
                                  setState(() {
                                    siteModel.lightTransmissionRatio = value;
                                  });
                                },(value){
                                  setState(() {
                                    siteModel.latitude = value;
                                  });
                                },(value){
                                  setState(() {
                                    siteModel.longtitude = value;
                                  });
                                }
                                ),
                                OperationalWidget((sensorMetrics){
                                  setState(() {
                                    _sensorMetrics = sensorMetrics;
                                  });
                                }),
                                Container(
                                  child: ListView.separated(itemBuilder: (contex, index){
                                    return ZonesWidget((zones){
                                    }, siteAndZone, index);
                                  },
                                    separatorBuilder: (context, index){
                                      return Container(
                                        padding: EdgeInsets.symmetric(horizontal: 20),
                                        height: 80,
                                        child: Center(
                                          child: Divider(
                                            color: Colors.black,
                                            height: 4,
                                          ),
                                        ),
                                      );
                                    }, itemCount: siteAndZone.zones.length,),
                                ),
                                TimeZoneWidget(),
                              ]
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
                              ElevatedButton(onPressed: (){
                                _formKey.currentState.save();
                                // context.read<SeasonBloc>().add(SeasonModel(0, cultivationModel, _crops, _operationals, climateControlModel));
                              }, child: Text('Save',
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
                ),
                loading: () => Center(
                  child: CircularProgressIndicator(),
                ),
                error: (error) => Text(error));
          }),
    );
  }

  @override
  bool get wantKeepAlive => true;
}