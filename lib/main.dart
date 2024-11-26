import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'calorie_chart_screen.dart';
import 'ingredient_based_recipe_screen.dart';

void main() {
  runApp(MealPlannerApp());
}

class MealPlannerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meal Planner',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
      routes: {
        //'/calorieChart': (context) => CalorieChartScreen(seriesList: createSampleData()),
        '/ingredientRecipes': (context) => IngredientBasedRecipeScreen(),
      },
    );
  }
}
