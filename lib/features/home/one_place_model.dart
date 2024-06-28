// To parse this JSON data, do
//
//     final authErrorModel = authErrorModelFromJson(jsonString);

import 'dart:convert';

OnePlaceModel authErrorModelFromJson(String str) => OnePlaceModel.fromJson(json.decode(str));

String authErrorModelToJson(OnePlaceModel data) => json.encode(data.toJson());

class OnePlaceModel {
  final Data? data;
  final String? massag;
  final int? status;

  OnePlaceModel({
    this.data,
    this.massag,
    this.status,
  });

  factory OnePlaceModel.fromJson(Map<String, dynamic> json) => OnePlaceModel(
    data: json["data"] == null ? null : Data.fromJson(json["data"]),
    massag: json["massag"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "data": data?.toJson(),
    "massag": massag,
    "status": status,
  };
}

class Data {
  final String? the0;
  final int? id;
  final String? name;
  final String? image;
  final String? timework;
  final String? price;
  final String? description;
  final String? countryId;
  final String? tourismType;

  Data({
    this.the0,
    this.id,
    this.name,
    this.image,
    this.timework,
    this.price,
    this.description,
    this.countryId,
    this.tourismType,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    the0: json["0"],
    id: json["id"],
    name: json["name"],
    image: json["image"],
    timework: json["timework"],
    price: json["price"],
    description: json["description"],
    countryId: json["country_id"],
    tourismType: json["tourism type"],
  );

  Map<String, dynamic> toJson() => {
    "0": the0,
    "id": id,
    "name": name,
    "image": image,
    "timework": timework,
    "price": price,
    "description": description,
    "country_id": countryId,
    "tourism type": tourismType,
  };
}
