import 'package:flutter_krop/data/models/models.dart';

abstract class AppRepository{
  Future<List<SeasonModel>> getAllSeason();
  Future<List<SiteAndZoneModel>> getAllSiteAndZone();
  Future<List<CultivationModel>> getAllCultivation();
  Future<List<ClimateControlModel>> getAllClimateControl();
  Future<List<SiteModel>> getAllSite();
}