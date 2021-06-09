import 'package:flutter_krop/data/models/climate_control_model.dart';
import 'package:flutter_krop/data/models/cultivation_model.dart';
import 'package:flutter_krop/data/models/models.dart';
class MockDatasource {
  Future<List<SeasonModel>> getAllSeasons() async{
    var models = <SeasonModel>[];
    return models;
  }
  Future<List<CultivationModel>> getAllCultivation() async{
    var models = <CultivationModel>[];
    return models;
}
  Future<List<ClimateControlModel>> getAllClimateControl() async{
    var models = <ClimateControlModel>[];
    return models;
  }
  Future<List<SiteModel>> getAllSite() async{
    var models = <SiteModel>[];
    return models;
  }
  Future<List<SiteAndZoneModel>> getAllSiteAndZone() async{
    var models = <SiteAndZoneModel>[];
    return models;
  }
}