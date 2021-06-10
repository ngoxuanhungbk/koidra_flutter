import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_krop/bloc/setting/season/season_state.dart';
import 'package:flutter_krop/data/models/cultivation_model.dart';
import 'package:flutter_krop/data/models/models.dart';
import 'package:flutter_krop/data/repository/app_repository.dart';

class SeasonBloc extends Cubit<SeasonState>{
  final AppRepository appRepository;
  SeasonBloc(this.appRepository) : super(SeasonState.loading());

  void init(){
    appRepository.getSeason().then((season) => emit(SeasonStateData(season)));
  }

  Future add(SeasonModel seasonModel) async{
    state.maybeWhen((season) {
      season = seasonModel;
      return emit(SeasonState(season));
    }, orElse: () => emit(SeasonState.error('error')));
  }
}