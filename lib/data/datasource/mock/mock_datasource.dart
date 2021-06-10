import 'package:flutter_krop/data/models/climate_control_model.dart';
import 'package:flutter_krop/data/models/cultivation_model.dart';
import 'package:flutter_krop/data/models/models.dart';
class MockDatasource {
  Future<SeasonModel> getSeasons() async{
    var model = SeasonModel(0, CultivationModel('', '', 0, null, null, null)
        , [], [], ClimateControlModel(0,0,0,0,0,0,0));
    return model;
  }
  Future<SiteAndZoneModel> getSiteAndZone() async{
    var models = SiteAndZoneModel(SiteModel('', '', '', '', 0, 0, 0), [],
        <ZoneModel>[
          ZoneModel('zone 1', ['a', 'b', 'c']),
          ZoneModel('zone 1', ['d', 'e', 'f'])
        ], '');
    return models;
  }
}