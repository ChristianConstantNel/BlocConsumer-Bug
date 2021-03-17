import 'package:bloc/bloc.dart';

import 'package:equatable/equatable.dart';

part 'favourites_state.dart';

class FavouritesCubit extends Cubit<FavouritesState> {
  FavouritesCubit() : super(FavouritesState.empty());

  void addFav(String id) async {
    if (state.ids.contains(id)) {
      emit(state.copyWith(showPopUp: true));
      return;
    }
    final List<String> newList = List.from(state.ids)..add(id);
    emit(state.copyWith(ids: newList));
  }
}
