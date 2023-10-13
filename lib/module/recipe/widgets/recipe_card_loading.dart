import 'package:flutter/material.dart';
import 'package:iij_test/common/widgets/loading_bar.dart';

class RecipeCardLoading extends StatelessWidget {
  const RecipeCardLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        LoadingBar(
          height: 200,
        ),
        SizedBox(height: 8),
        LoadingBar(
          width: 250,
        ),
        SizedBox(height: 4),
        LoadingBar(
          width: 200,
        )
      ]),
    );
  }
}
