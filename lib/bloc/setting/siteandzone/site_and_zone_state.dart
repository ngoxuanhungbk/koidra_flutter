import 'package:flutter_krop/data/models/site_and_zone_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'site_and_zone_state.freezed.dart';

@freezed
abstract class SiteAndZoneState with _$SiteAndZoneState {
  const factory SiteAndZoneState(SiteAndZoneModel siteAndZone) = SiteAndZoneStateData;
  const factory SiteAndZoneState.loading() = SiteAndZoneStateLoading;
  const factory SiteAndZoneState.error(dynamic error) = SiteAndZoneStateError;
}