import 'package:flutter_krop/data/datasource/mock/mock_datasource.dart';
import 'package:flutter_krop/data/models/climate_control_model.dart';
import 'package:flutter_krop/data/models/cultivation_model.dart';
import 'package:flutter_krop/data/models/season_model.dart';
import 'package:flutter_krop/data/models/site_and_zone_model.dart';
import 'package:flutter_krop/data/models/site_model.dart';
import 'package:flutter_krop/data/repository/app_repository.dart';

class AppRepositoryImpl extends AppRepository{
  MockDatasource mockDatasource;

  AppRepositoryImpl(this.mockDatasource);

  @override
  Future<List<ClimateControlModel>> getAllClimateControl() {
    return mockDatasource.getAllClimateControl();
  }

  @override
  Future<List<CultivationModel>> getAllCultivation() {
    return mockDatasource.getAllCultivation();
  }

  @override
  Future<List<SiteModel>> getAllSite() {
    return mockDatasource.getAllSite();
  }

  @override
  Future<List<SeasonModel>> getAllSeason() {
    return mockDatasource.getAllSeasons();
  }

  @override
  Future<List<SiteAndZoneModel>> getAllSiteAndZone() {
    return mockDatasource.getAllSiteAndZone();
  }

}