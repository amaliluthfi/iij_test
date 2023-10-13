import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iij_test/common/app_colors.dart';
import 'package:iij_test/module/recipe/data/recipe_model.dart';
import 'package:iij_test/module/recipe/network/recipe_network.dart';

class RecipesController extends GetxController {
  List<Recipes> recipes = [];
  bool isLoading = false;
  final _network = RecipeNetwork();

  @override
  void onInit() {
    fetchRecipe();
    super.onInit();
  }

  void fetchRecipe() async {
    isLoading = true;
    update();
    try {
      final response = await _network.getRecipe();
      recipes.addAll(response);
    } catch (e) {
      Get.showSnackbar(GetSnackBar(
        borderRadius: 8,
        margin: EdgeInsets.all(16),
        snackPosition: SnackPosition.TOP,
        snackStyle: SnackStyle.FLOATING,
        duration: Duration(seconds: 3),
        title: "Error",
        backgroundColor: AppColors.errorColor,
        message: "$e",
      ));
    }
    isLoading = false;
    // update();
  }
}
