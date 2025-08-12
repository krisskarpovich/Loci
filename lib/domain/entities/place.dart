import 'package:freezed_annotation/freezed_annotation.dart';

part 'place.freezed.dart';

@freezed
abstract class Place with _$Place {
  const Place._();

  const factory Place({String? displayName, double? lat, double? lon}) = _Place;
}
