import 'package:flutter_krop/bloc/setting/siteandzone/site_and_zone_state.dart';
import 'package:flutter_krop/data/models/models.dart';
import 'package:flutter_krop/data/models/site_and_zone_model.dart';
import 'package:flutter_krop/data/repository/app_repository.dart';

import '../../blocs.dart';

class SiteAndZoneBloc extends Cubit<SiteAndZoneState>{
  final AppRepository appRepository;
  SiteAndZoneBloc(this.appRepository) : super(SiteAndZoneState.loading());

  void init(){
    appRepository.getSiteAndZone().then((siteAndZone) => emit(SiteAndZoneStateData(siteAndZone)));
  }

  Future add(SiteAndZoneModel siteAndZoneModel) async{
    state.maybeWhen((siteAndZone) {
      siteAndZone = siteAndZoneModel;
      return emit(SiteAndZoneState(siteAndZone));
    }, orElse: () => emit(SiteAndZoneState.error('error')));
  }
  Future updateZone(int index, String topMetrics) async{
    List<ZoneModel> zones2;
    state.maybeWhen((siteAndZone) {
      zones2 = [...siteAndZone.zones];
      zones2[index].topMetrics.add(topMetrics);
      siteAndZone.zones = zones2;
      return emit(SiteAndZoneState(siteAndZone));
    }, orElse: () => emit(SiteAndZoneState.error('error')));
  }
  Future removeZone(int index, String topMetrics) async{
    List<ZoneModel> zones2;
    state.maybeWhen((siteAndZone) {
      zones2 = [...siteAndZone.zones];
      zones2[index].topMetrics.remove(topMetrics);
      siteAndZone.zones = zones2;
      return emit(SiteAndZoneState(siteAndZone));
    }, orElse: () => emit(SiteAndZoneState.error('error')));
  }
}