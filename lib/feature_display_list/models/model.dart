import 'package:json_annotation/json_annotation.dart';
part 'model.g.dart';

@JsonSerializable()
class BeerModel {
  int id;

  String name;

  String tagline;

  String description;

  @JsonKey(name: 'image_url')
  String imageUrl;

  BeerModel({
    required this.id,
    required this.name,
    required this.tagline,
    required this.description,
    required this.imageUrl,
  });

  factory BeerModel.fromJson(Map<String, dynamic> json) =>
      _$BeerModelFromJson(json);
}
