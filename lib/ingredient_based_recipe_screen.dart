import 'package:flutter/material.dart';
import 'package:meal_planner_app/IngredientBasedRecipeDetailsScreen.dart';

class IngredientBasedRecipeScreen extends StatelessWidget {
  final List<String> availableIngredients = ['Tomato', 'Chicken', 'Rice'];

  IngredientBasedRecipeScreen({super.key}); // Example

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Recipes Based on Ingredients',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.teal.shade50, // Light background color
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Available Ingredients Section
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.orange.shade100,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'Available Ingredients: ${availableIngredients.join(', ')}',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.deepOrange.shade700,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Suggested Recipes Section
            const Text(
              'Suggested Recipes:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10),

            // Recipe Suggestions List
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 2, // Always 2 suggestions
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: InkWell(
                      onTap: () {

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  const IngredientBasedRecipeDetailsScreen()),
                        );
                        // Navigate to detailed recipe view (stub)
                      },
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(16),
                        leading: const Icon(
                          Icons.restaurant_menu,
                          size: 40,
                          color: Colors.teal,
                        ),
                        title: Text(
                          'Recipe Suggestion ${index + 1}',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.teal.shade800,
                          ),
                        ),
                        // subtitle: Text(
                        //   'Click to view detailed recipe.',
                        //   style: TextStyle(color: Colors.grey.shade600),
                        // ),
                        subtitle: Text(
                          'Tomato Chicken Curry with Rice',
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            // Call-to-action Button
          ],
        ),
      ),
    );
  }
}
