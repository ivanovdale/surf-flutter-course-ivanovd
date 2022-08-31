import 'package:places/helpers/app_strings.dart';

/// Модель достопримечательности.
///
/// Имеет следующие поля:
/// * [name] - название достопримечательности;
/// * [lat] - географическая долгота точки;
/// * [lon] - географическая широта точки;
/// * [url] - путь до фотографии в интернете;
/// * [details] - подробное описание места;
/// * [type] - тип достопримечательности;
/// * [workTimeFrom] - время работы "с". Например, 09:00;
/// * [visitDate] - запланированная дата посещения. Например, 12 окт. 2022;
/// * [visited] - признак посещения.
class Sight {
  String name;
  double lat;
  double lon;
  String url;
  String details;
  SightTypes type;
  String workTimeFrom;
  String? visitDate;
  bool visited;

  Sight({
    required this.name,
    required this.lat,
    required this.lon,
    required this.url,
    required this.details,
    required this.type,
    required this.workTimeFrom,
    this.visitDate,
    this.visited = false,
  });
}

enum SightTypes {
  coffeeShop(AppStrings.coffeeShop),
  park(AppStrings.park),
  museum(AppStrings.museum);

  const SightTypes(this.name);

  final String name;

  @override
  String toString() => name;
}
