// To parse this JSON data, do
//
//     final recipes = recipesFromJson(jsonString);

import 'dart:convert';

List<Recipes> recipesFromJson(String str) => List<Recipes>.from(json.decode(str).map((x) => Recipes.fromJson(x)));

String recipesToJson(List<Recipes> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Recipes {
    String calories;
    String carbos;
    String description;
    int difficulty;
    String fats;
    String headline;
    String id;
    String image;
    String name;
    String proteins;
    String thumb;
    String time;
    String? country;

    Recipes({
        required this.calories,
        required this.carbos,
        required this.description,
        required this.difficulty,
        required this.fats,
        required this.headline,
        required this.id,
        required this.image,
        required this.name,
        required this.proteins,
        required this.thumb,
        required this.time,
        this.country,
    });

    factory Recipes.fromJson(Map<String, dynamic> json) => Recipes(
        calories: json["calories"],
        carbos: json["carbos"],
        description: json["description"],
        difficulty: json["difficulty"],
        fats: json["fats"],
        headline: json["headline"],
        id: json["id"],
        image: json["image"],
        name: json["name"],
        proteins: json["proteins"],
        thumb: json["thumb"],
        time: json["time"],
        country: json["country"],
    );

    Map<String, dynamic> toJson() => {
        "calories": calories,
        "carbos": carbos,
        "description": description,
        "difficulty": difficulty,
        "fats": fats,
        "headline": headline,
        "id": id,
        "image": image,
        "name": name,
        "proteins": proteins,
        "thumb": thumb,
        "time": time,
        "country": country,
    };
}
