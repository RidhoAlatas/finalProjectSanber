import 'dart:convert';

class DigimonModel {
  String? name;
  String? img;
  String? level;

  DigimonModel({
    required this.name,
    required this.img,
    required this.level,
  });

  DigimonModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    img = json['img'];
    level = json['level'];
  }

  
}

List<DigimonModel> listFromJson(String str) {
  return List<DigimonModel>.from(
    json.decode(str).map((x) => DigimonModel.fromJson(x)));
}
