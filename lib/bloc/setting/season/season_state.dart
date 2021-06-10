import 'package:flutter_krop/data/models/season_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'season_state.freezed.dart';

@freezed
abstract class SeasonState with _$SeasonState {
  const factory SeasonState(SeasonModel season) = SeasonStateData;
  const factory SeasonState.loading() = SeasonStateLoading;
  const factory SeasonState.error(dynamic error) = SeasonStateError;
}