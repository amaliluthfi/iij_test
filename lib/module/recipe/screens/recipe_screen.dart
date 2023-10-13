import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iij_test/common/app_colors.dart';
import 'package:iij_test/common/utils/responsive_utils.dart';
import 'package:iij_test/module/recipe/controller/recipe_controller.dart';
import 'package:iij_test/module/recipe/data/recipe_model.dart';
import 'package:iij_test/module/recipe/widgets/recipe_card.dart';
import 'package:iij_test/module/recipe/widgets/recipe_card_loading.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
      body: GetBuilder<RecipesController>(
          init: RecipesController(),
          builder: (controller) {
            if (ResponseUtils.isLarge(context)) {
              if (controller.isLoading) {
                return GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 500,
                      mainAxisExtent: 300,
                      crossAxisSpacing: 25,
                      childAspectRatio: 3 / 2),
                  itemCount: 12,
                  padding: EdgeInsets.all(16),
                  itemBuilder: (contex, index) {
                    return RecipeCardLoading();
                  },
                );
              } else {
                return GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 500,
                      mainAxisExtent: 500,
                      crossAxisSpacing: 20,
                      childAspectRatio: 3 / 2),
                  itemCount: controller.recipes.length,
                  padding: EdgeInsets.all(16),
                  itemBuilder: (contex, index) {
                    Recipes item = controller.recipes[index];
                    return RecipeCard(
                      item: item,
                    );
                  },
                );
              }
            } else {
              if (controller.isLoading) {
                return ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return RecipeCardLoading();
                    });
              } else {
                return ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.recipes.length,
                    padding: EdgeInsets.all(16),
                    itemBuilder: (context, index) {
                      Recipes item = controller.recipes[index];
                      return RecipeCard(item: item);
                    });
              }
            }
          }),
    );
  }
}
