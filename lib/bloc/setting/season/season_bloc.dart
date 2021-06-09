import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_krop/bloc/setting/season/season_state.dart';
import 'package:flutter_krop/data/models/cultivation_model.dart';
import 'package:flutter_krop/data/models/models.dart';
import 'package:flutter_krop/data/repository/app_repository.dart';

class SeasonBloc extends Cubit<SeasonState>{
  final AppRepository appRepository;
  SeasonBloc(this.appRepository) : super(SeasonState.loading());

  void init(){
    appRepository.getAllSeason().then((carts) => emit(SeasonStateData(carts)));
  }

  Future add(SeasonModel seasonModel) async{
    List<SeasonModel> seasons2;
    state.maybeWhen((seasons) {
      seasons2 = [...seasons];
      seasons2.add(seasonModel);
      return emit(SeasonState(seasons2));
    }, orElse: () => emit(SeasonState.error('error')));
  }
}