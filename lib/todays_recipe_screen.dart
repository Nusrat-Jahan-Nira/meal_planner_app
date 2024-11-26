import 'package:flutter/material.dart';

class TodaysRecipeScreen extends StatelessWidget {
  final String recipeName;

  const TodaysRecipeScreen({super.key, required this.recipeName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Today\'s Recipe')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              recipeName,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            // Show Recipe Details
            const SizedBox(height: 20),
            const Text(
              'Ingredients: \n1. Ingredient 1 \n2. Ingredient 2 \n3. Ingredient 3',
            ),
            // Show Recipe Steps
            const SizedBox(height: 20),
            const Text(
              'Instructions: \n1. Step 1 \n2. Step 2 \n3. Step 3',
            ),
          ],
        ),
      ),
    );
  }
}
