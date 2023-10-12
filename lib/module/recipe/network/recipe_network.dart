import 'dart:convert';

import 'package:iij_test/core/network/app_network.dart';
import 'package:iij_test/module/recipe/data/recipe_model.dart';

class RecipeNetwork {
  final String recipeJsonLoc = "recipes.json";

  Future<List<Recipes>> getRecipe() async {
    try {
      var res = await AppNetWork.get(recipeJsonLoc);
      return List<Recipes>.from(
          json.decode(res).map((x) => Recipes.fromJson(x)));
    } catch (e) {
      throw e;
    }
  }
}
