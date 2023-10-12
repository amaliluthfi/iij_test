import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iij_test/common/app_colors.dart';
import 'package:iij_test/common/widgets/loading_bar.dart';
import 'package:iij_test/module/recipe/controller/recipe_controller.dart';
import 'package:iij_test/module/recipe/data/recipe_model.dart';
import 'package:iij_test/module/recipe/widgets/recipe_card.dart';

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
            if (controller.isLoading) {
              return ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(16),
                      child: LoadingBar(),
                    );
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
          }),
    );
  }
}
