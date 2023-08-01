import 'package:places/domain/model/place.dart';

sealed class FavouritePlacesEvent {}

final class FavoritePlacesInitEvent extends FavouritePlacesEvent {}

final class ToggleFavouritesEvent extends FavouritePlacesEvent {
  final Place place;

  ToggleFavouritesEvent(this.place);
}

final class RemoveFromFavouritesEvent extends FavouritePlacesEvent {
  final Place place;

  RemoveFromFavouritesEvent(this.place);
}

final class InsertPlaceEvent extends FavouritePlacesEvent {
  final Place place;
  final Place targetPlace;

  InsertPlaceEvent({
    required this.place,
    required this.targetPlace,
  });
}