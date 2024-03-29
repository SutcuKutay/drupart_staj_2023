import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../screens/mealScreen.dart';

class MealsList extends StatelessWidget {
  const MealsList({
    super.key,
    required this.meals,
  });

  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: meals.length,
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return MealScreen(meal: meals[index]);
              },
            ),
          );
        },
        child: Card(
          child: Image.network(meals[index].imageUrl),
        ),
      ),
    );
  }
}