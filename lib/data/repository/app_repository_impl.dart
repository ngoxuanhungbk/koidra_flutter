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
  Future<SeasonModel> getSeason() {
    return mockDatasource.getSeasons();
  }

  @override
  Future<SiteAndZoneModel> getSiteAndZone() {
    return mockDatasource.getSiteAndZone();
  }

}