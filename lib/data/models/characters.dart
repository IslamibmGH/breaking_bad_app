// To parse this JSON data, do
//
//     final character = characterFromJson(jsonString);

import 'dart:convert';

Character characterFromJson(String str) => Character.fromJson(json.decode(str));

String characterToJson(Character data) => json.encode(data.toJson());

class Character {
  Character({
    required this.charId,
    required this.name,
    required this.birthday,
    required this.occupation,
    required this.img,
    required this.status,
    required this.nickname,
    required this.appearance,
    required this.portrayed,
    required this.category,
    required this.betterCallSaulAppearance,
  });

  int charId;
  String name;
  String birthday;
  List<String> occupation;
  String img;
  String status;
  String nickname;
  List<int> appearance;
  String portrayed;
  String category;
  List<dynamic> betterCallSaulAppearance;

  factory Character.fromJson(Map<String, dynamic> json) => Character(
        charId: json["char_id"],
        name: json["name"],
        birthday: json["birthday"],
        occupation: List<String>.from(json["occupation"].map((x) => x)),
        img: json["img"],
        status: json["status"],
        nickname: json["nickname"],
        appearance: List<int>.from(json["appearance"].map((x) => x)),
        portrayed: json["portrayed"],
        category: json["category"],
        betterCallSaulAppearance: List<dynamic>.from(
            json["better_call_saul_appearance"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "char_id": charId,
        "name": name,
        "birthday": birthday,
        "occupation": List<dynamic>.from(occupation.map((x) => x)),
        "img": img,
        "status": status,
        "nickname": nickname,
        "appearance": List<dynamic>.from(appearance.map((x) => x)),
        "portrayed": portrayed,
        "category": category,
        "better_call_saul_appearance":
            List<dynamic>.from(betterCallSaulAppearance.map((x) => x)),
      };
}


//Alternative way:
    // class Character {
    //   late int charId;
    //   late String name;
    //   late String birthday;
    //   late List<dynamic> occupation;
    //   late String img;
    //   late String status;
    //   late String nickname;
    //   late List<dynamic> appearance;
    //   late String portrayed;
    //   late String category;
    //   late List<dynamic> betterCallSaulAppearance;

    //   Character.fromJson(Map<String, dynamic> json) {
    //     charId = json["char_id"];
    //     name = json["name"];
    //     birthday = json["birthday"];
    //     occupation = json["occupation"];
    //     img = json["img"];
    //     status = json["status"];
    //     nickname = json["nickname"];
    //     appearance = json["appearance"];
    //     portrayed = json["portrayed"];
    //     category = json["category"];
    //     betterCallSaulAppearance = json["better_call_saul_appearance"];
    //   }
    // }
