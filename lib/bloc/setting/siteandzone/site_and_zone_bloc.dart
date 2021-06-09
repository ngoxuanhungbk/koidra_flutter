import 'package:flutter_krop/bloc/setting/siteandzone/site_and_zone_state.dart';
import 'package:flutter_krop/data/models/site_and_zone_model.dart';
import 'package:flutter_krop/data/repository/app_repository.dart';

import '../../blocs.dart';

class SiteAndZoneBloc extends Cubit<SiteAndZoneState>{
  final AppRepository appRepository;
  SiteAndZoneBloc(this.appRepository) : super(SiteAndZoneState.loading());

  void init(){
    appRepository.getAllSiteAndZone().then((siteAndZones) => emit(SiteAndZoneStateData(siteAndZones)));
  }

  Future add(SiteAndZoneModel siteAndZoneModel) async{
    List<SiteAndZoneModel> siteAndZones2;
    state.maybeWhen((siteAndZones) {
      siteAndZones2 = [...siteAndZones];
      siteAndZones2.add(siteAndZoneModel);
      return emit(SiteAndZoneState(siteAndZones2));
    }, orElse: () => emit(SiteAndZoneState.error('error')));
  }
}