import 'package:places/domain/model/place.dart';
import 'package:places/favourite_places/domain/favourite_place_repository.dart';

final class FavouritePlaceInteractor {
  final FavouritePlaceRepository favouritePlaceRepository;

  FavouritePlaceInteractor(this.favouritePlaceRepository);

  List<Place> getPlaces() {
    return favouritePlaceRepository.getPlaces();
  }

  List<Place> toggleFavourite(Place place) {
    return favouritePlaceRepository.toggleFavourite(place);
  }

  List<Place> removeFromFavourites(Place place) {
    return favouritePlaceRepository.removeFromFavourites(place);
  }

  List<Place> insertPlace(
    Place place,
    Place targetPlace,
  ) {
    return favouritePlaceRepository.insertPlace(place, targetPlace);
  }
}