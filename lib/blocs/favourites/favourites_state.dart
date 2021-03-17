part of 'favourites_cubit.dart';

class FavouritesState extends Equatable {
  final bool showPopUp;
  final List<String> ids;
  const FavouritesState({this.showPopUp, this.ids});

  factory FavouritesState.empty() {
    return FavouritesState(showPopUp: false, ids: []);
  }

  @override
  List<Object> get props => [ids, showPopUp];

  FavouritesState copyWith({
    bool showPopUp,
    List<String> ids,
  }) {
    return FavouritesState(
      showPopUp: showPopUp ?? this.showPopUp,
      ids: ids ?? this.ids,
    );
  }
}
