class AiModel {
  final List<Datum>? data;
  final String? massag;
  final int? status;

  AiModel({
    this.data,
    this.massag,
    this.status,
  });

  factory AiModel.fromJson(Map<String, dynamic> json) => AiModel(
    data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
    massag: json["massag"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    "massag": massag,
    "status": status,
  };
}

class Datum {
  final String? the0;
  final int? id;
  final String? name;
  final String? image;
  final String? timework;
  final String? price;
  final String? description;
  final String? countryId;
  final String? tourismType;

  Datum({
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

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
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
