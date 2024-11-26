import 'package:flutter/material.dart';

class IngredientBasedRecipeDetailsScreen extends StatelessWidget {
  const IngredientBasedRecipeDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe Details'),
        backgroundColor: Colors.teal.shade600,
      ),
      backgroundColor: Colors.teal.shade100,
      body: SingleChildScrollView( // Wrap the entire body in a SingleChildScrollView
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title Section
            Text(
              'Tomato Chicken Curry with Rice',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.teal.shade800,
              ),
            ),
            const SizedBox(height: 10),

            // Description Section
            const Text(
              'A rich and aromatic curry with chicken cooked in a spiced tomato-based sauce, served over rice. '
                  'Perfect for anyone craving a hearty meal. This dish combines the freshness of tomatoes with the savory flavors of chicken, '
                  'making it a satisfying and comforting meal for any occasion. Serve it with a side of steamed rice to balance the spices.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 20),

            // Ingredients Section with Icon
            Row(
              children: [
                Icon(Icons.shopping_cart, color: Colors.teal.shade700, size: 30),
                const SizedBox(width: 8),
                Text(
                  'Ingredients:',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal.shade700,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Card(
              color: Colors.teal.shade50,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('- Chicken', style: TextStyle(fontSize: 16)),
                    Text('- Tomatoes', style: TextStyle(fontSize: 16)),
                    Text('- Rice', style: TextStyle(fontSize: 16)),
                    Text('- Spices (turmeric, cumin, coriander, etc.)', style: TextStyle(fontSize: 16)),
                    Text('- Garlic & Ginger', style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Instructions Section with Icon
            Row(
              children: [
                Icon(Icons.list_alt, color: Colors.teal.shade700, size: 30),
                const SizedBox(width: 8),
                Text(
                  'Instructions:',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal.shade700,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Card(
              color: Colors.orange.shade50,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('1. Cook chicken in a pot until browned.', style: TextStyle(fontSize: 16)),
                    Text('2. Add chopped tomatoes, garlic, and ginger, and cook until soft.', style: TextStyle(fontSize: 16)),
                    Text('3. Add spices and simmer until the chicken is cooked through.', style: TextStyle(fontSize: 16)),
                    Text('4. Serve over freshly cooked rice.', style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Call-to-action Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // You can add your interaction logic here, like saving or sharing the recipe.
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal.shade600, // Button color
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 6,
                ),
                child: const Text(
                  'Save Recipe',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}