import 'package:freezed_annotation/freezed_annotation.dart';
import 'word_ser.dart';
part 'review.freezed.dart';
part 'review.g.dart';

@freezed
class Restaurant with _$Restaurant {
  factory Restaurant({
    required String name,
    required String cuisine,
    @JsonKey(name: 'year_opened') int? yearOpened,

    @Default([]) List<Review> reviews,
  }) = _Restaurant;

  factory Restaurant.fromJson(Map<String, dynamic> json) => _$RestaurantFromJson(json);
}