import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listener/blocs/favourites/favourites_cubit.dart';

class FavIcon extends StatefulWidget {
  final String type;
  const FavIcon({@required this.type});

  @override
  _FavIconState createState() => _FavIconState();
}

class _FavIconState extends State<FavIcon> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
      cubit: BlocProvider.of<FavouritesCubit>(context),
      listener: (context, FavouritesState state) {
        if (state.showPopUp) {
          print(widget.type);
        }
      },
      builder: (context, FavouritesState state) {
        return IconButton(
            icon: Icon(state.ids.contains(widget.type)
                ? Icons.favorite
                : Icons.favorite_border),
            onPressed: () {
              BlocProvider.of<FavouritesCubit>(context).addFav(widget.type);
            });
      },
    );
  }
}
