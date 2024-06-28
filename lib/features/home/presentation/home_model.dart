class HomeModel {
  final List<Datum>? data;
  final String? massag;
  final int? status;

  HomeModel({
    this.data,
    this.massag,
    this.status,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
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
  final String? description;

  Datum({
    this.the0,
    this.id,
    this.name,
    this.image,
    this.description,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    the0: json["0"],
    id: json["id"],
    name: json["name"],
    image: json["image"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "0": the0,
    "id": id,
    "name": name,
    "image": image,
    "description": description,
  };
}
