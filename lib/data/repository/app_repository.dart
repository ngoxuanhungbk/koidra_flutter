import 'package:flutter_krop/data/models/models.dart';

abstract class AppRepository{
  Future<SeasonModel> getSeason();
  Future<SiteAndZoneModel> getSiteAndZone();
}