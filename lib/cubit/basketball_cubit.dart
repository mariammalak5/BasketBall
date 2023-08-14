import 'package:bloc/bloc.dart';
import 'package:tbloc/cubit/basketball_state.dart';

class BasketballCubit extends Cubit<IncrementState>{
  BasketballCubit() : super(InitState());
  int teamAPoint = 0;
  int teamBPoint = 0;

  void incrementPoint ({required String team, required int points}){
    if (team == "A"){
      teamAPoint += points;
      emit(IncrementTeamState());
    }else {
      teamBPoint += points;
      emit(IncrementTeamState());
    }
  }
  void rest(){
    teamAPoint = 0;
    teamBPoint = 0;
    emit(RestTeamState());
  }
}