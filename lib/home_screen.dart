// import 'package:flutter/material.dart';
// import 'ingredient_based_recipe_screen.dart';
//
// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Meal Planner'),
//         backgroundColor: Colors.teal, // Vibrant color for the app bar
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0), // Add some padding around the entire body
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Button for Ingredient-Based Recipes
//             ElevatedButton(
//               onPressed: () {
//                 // Navigate to the IngredientBasedRecipeScreen
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => IngredientBasedRecipeScreen()),
//                 );
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.orangeAccent, // Color the button
//                 padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//                 textStyle: const TextStyle(fontSize: 16),
//               ),
//               child: const Text('Go to Ingredient-Based Recipes'),
//             ),
//             const SizedBox(height: 20),
//
//             // Section Title
//             const Text(
//               'Weekly Recipe Suggestions',
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.teal,
//               ),
//             ),
//             const SizedBox(height: 10),
//
//             // GridView for Weekly Recipes
//             Expanded(
//               child: GridView.builder(
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2, // Two items per row
//                   crossAxisSpacing: 16, // Space between columns
//                   mainAxisSpacing: 16, // Space between rows
//                   childAspectRatio: 0.8, // Adjust aspect ratio to make the items look better
//                 ),
//                 itemCount: 7, // For 7 days of the week
//                 itemBuilder: (context, index) {
//                   return Card(
//                     elevation: 5,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(15), // Rounded corners
//                     ),
//                     color: Colors.blueGrey[50], // Light background color
//                     child: InkWell(
//                       onTap: () {
//                         // Handle tap (for example, navigate to a detailed recipe screen)
//                       },
//                       child: Padding(
//                         padding: const EdgeInsets.all(16.0),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             const Icon(
//                               Icons.restaurant_menu,
//                               size: 40,
//                               color: Colors.orangeAccent,
//                             ),
//                             const SizedBox(height: 10),
//                             Text(
//                               'Recipe ${index + 1}',
//                               style: const TextStyle(
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.teal,
//                               ),
//                               textAlign: TextAlign.center,
//                             ),
//                             const SizedBox(height: 8),
//                             Text(
//                               'Suggested Recipe for Day ${index + 1}',
//                               style: TextStyle(
//                                 fontSize: 14,
//                                 color: Colors.grey[600],
//                               ),
//                               textAlign: TextAlign.center,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'ingredient_based_recipe_screen.dart';
//
// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
//   double _sliderValue = 3;  // Default slider value (e.g., servings, portions)
//   List<RecipeItem> _recipes = List.generate(7, (index) => RecipeItem(index));
//   double mealCompletionPercentage = 60.0; // Example value for progress
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Meal Planner'),
//         backgroundColor: Colors.teal, // Vibrant color for the app bar
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0), // Add some padding around the entire body
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // User Summary Section
//               _buildUserSummary(),
//
//              // const SizedBox(height: 30),
//
//               // Ingredient-Based Recipes Button
//              // _buildIngredientBasedRecipesButton(),
//
//               const SizedBox(height: 20),
//
//               // Weekly Recipe Suggestions Header
//
//               // Meal Completion Progress (Linear Progress Bar)
//               _buildMealProgressBar(),
//               const SizedBox(height: 20),
//               const Text(
//                 'Weekly Recipe Suggestions',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.teal,
//                 ),
//               ),
//               const SizedBox(height: 10),
//
//
//
//               // Horizontal ListView for Weekly Recipes
//               Container(
//                 height: 250, // Fixed height for the horizontal list
//                 child: ListView.builder(
//                   scrollDirection: Axis.horizontal, // Scroll horizontally
//                   itemCount: _recipes.length,
//                   itemBuilder: (context, index) {
//                     return _buildAnimatedRecipeItem(_recipes[index], index);
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   // User Summary: Displays user's meal data
//   // Widget _buildUserSummary() {
//   //   return Container(
//   //     padding: const EdgeInsets.all(16.0),
//   //     decoration: BoxDecoration(
//   //       color: Colors.teal[50],
//   //       borderRadius: BorderRadius.circular(15),
//   //       boxShadow: [
//   //         BoxShadow(color: Colors.black26, offset: Offset(0, 4), blurRadius: 8),
//   //       ],
//   //     ),
//   //     child: Row(
//   //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   //       children: [
//   //         // Left side: User Meal Stats
//   //         Column(
//   //           crossAxisAlignment: CrossAxisAlignment.start,
//   //           children: const [
//   //             Text('Total Servings: 21', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.teal)),
//   //             SizedBox(height: 5),
//   //             Text('Calories Remaining: 1500 kcal', style: TextStyle(fontSize: 14, color: Colors.teal)),
//   //             SizedBox(height: 5),
//   //             Text('Meals Completed: 10', style: TextStyle(fontSize: 14, color: Colors.teal)),
//   //           ],
//   //         ),
//   //
//   //         // Right side: Profile Picture or Avatar
//   //         CircleAvatar(
//   //           radius: 40,
//   //           backgroundImage: AssetImage('assets/user_avatar.png'), // Replace with an actual avatar image
//   //         ),
//   //       ],
//   //     ),
//   //   );
//   // }
//
//   Widget _buildUserSummary() {
//     return Container(
//       padding: const EdgeInsets.all(20.0),
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [Colors.teal.shade200, Colors.teal.shade400],
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//         borderRadius: BorderRadius.circular(20),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.15),
//             offset: Offset(0, 5),
//             blurRadius: 10,
//           ),
//         ],
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,  // Align to top to avoid overflow
//         children: [
//           // Left side: User Meal Stats - Wrap it in Expanded
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Total Servings
//                 Row(
//                   children: [
//                     const Icon(Icons.restaurant, color: Colors.white, size: 20),
//                     const SizedBox(width: 8),
//                     Text(
//                       'Total Servings: 21',
//                       style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 10),
//
//                 // Calories Remaining
//                 Row(
//                   children: [
//                     const Icon(Icons.fastfood, color: Colors.white, size: 20),
//                     const SizedBox(width: 8),
//                     Text(
//                       'Calories Remaining: 1500 kcal',
//                       style: TextStyle(fontSize: 14, color: Colors.white70),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 10),
//
//                 // Meals Completed
//                 Row(
//                   children: [
//                     const Icon(Icons.check_circle, color: Colors.white, size: 20),
//                     const SizedBox(width: 8),
//                     Text(
//                       'Meals Completed: 10',
//                       style: TextStyle(fontSize: 14, color: Colors.white70),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//
//           // Right side: Profile Picture or Avatar (Using CircleAvatar for initials)
//           CircleAvatar(
//             radius: 35,  // Adjust size of the avatar
//             backgroundColor: Colors.white,  // Background color for the avatar
//             child: Text(
//               'JD',  // Initials or any text to represent the user
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//
//
//   // Ingredient-Based Recipes Button
//   Widget _buildIngredientBasedRecipesButton() {
//     return ElevatedButton(
//       onPressed: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => IngredientBasedRecipeScreen()),
//         );
//       },
//       child: const Text('Go to Ingredient-Based Recipes'),
//       style: ElevatedButton.styleFrom(
//         backgroundColor: Colors.orangeAccent,
//         padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//         textStyle: const TextStyle(fontSize: 16),
//       ),
//     );
//   }
//
//   // Meal Completion Progress Bar (LinearProgressIndicator)
//   Widget _buildMealProgressBar() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Text(
//           'Meal Completion Progress',
//           style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.teal),
//         ),
//         const SizedBox(height: 10),
//         LinearProgressIndicator(
//           value: mealCompletionPercentage / 100,
//           backgroundColor: Colors.grey[300],
//           valueColor: const AlwaysStoppedAnimation<Color>(Colors.teal),
//           minHeight: 8,
//         ),
//         const SizedBox(height: 10),
//         Text(
//           '${mealCompletionPercentage.toStringAsFixed(0)}% Completed',
//           style: const TextStyle(fontSize: 14, color: Colors.teal),
//         ),
//       ],
//     );
//   }
//
//   // Animated Recipe Item (Card for each recipe)
//   Widget _buildAnimatedRecipeItem(RecipeItem recipe, int index) {
//     return AnimatedContainer(
//       duration: const Duration(milliseconds: 300),
//       margin: const EdgeInsets.only(right: 16),
//       width: 200, // Card width
//       child: Card(
//         elevation: 5,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(15),
//         ),
//         color: Colors.blueGrey[50], // Light background color
//         child: InkWell(
//           onTap: () {
//             // Handle tap (for example, navigate to a detailed recipe screen)
//           },
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Icon(
//                   Icons.restaurant_menu,
//                   size: 40,
//                   color: Colors.orangeAccent,
//                 ),
//                 const SizedBox(height: 16),
//                 Text(
//                   'Recipe ${recipe.index + 1}',
//                   style: const TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.teal,
//                   ),
//                 ),
//                 const SizedBox(height: 8),
//                 Text(
//                   'Suggested Recipe for Day ${recipe.index + 1}',
//                   style: TextStyle(
//                     fontSize: 14,
//                     color: Colors.grey[600],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// // RecipeItem class for simulating a recipe object
// class RecipeItem {
//   final int index;
//   RecipeItem(this.index);
// }


// import 'package:flutter/material.dart';
// import 'ingredient_based_recipe_screen.dart';
//
// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
//   double _sliderValue = 3;  // Default slider value (e.g., servings, portions)
//   List<RecipeItem> _recipes = List.generate(7, (index) => RecipeItem(index));
//   double mealCompletionPercentage = 60.0; // Example value for progress
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Meal Planner', style: TextStyle(
//           color: Colors.white
//         ),),
//         backgroundColor: Colors.deepPurple, // Changed to deep purple
//
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0), // Add some padding around the entire body
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // User Summary Section
//               _buildUserSummary(),
//
//               const SizedBox(height: 20),
//
//               // Meal Completion Progress (Linear Progress Bar)
//               _buildMealProgressBar(),
//               const SizedBox(height: 20),
//               const Text(
//                 'Weekly Recipe Suggestions',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.teal,
//                 ),
//               ),
//               const SizedBox(height: 10),
//
//               // Horizontal ListView for Weekly Recipes
//               SizedBox(
//                 height: 200, // Fixed height for the horizontal list
//                 child: ListView.builder(
//                   scrollDirection: Axis.horizontal, // Scroll horizontally
//                   itemCount: _recipes.length,
//                   itemBuilder: (context, index) {
//                     return _buildAnimatedRecipeItem(_recipes[index], index);
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   // User Summary: Displays user's meal data
//   Widget _buildUserSummary() {
//     return Container(
//       padding: const EdgeInsets.all(20.0),
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [Colors.purple.shade200, Colors.purple.shade400],  // Changed to purple shades
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//         borderRadius: BorderRadius.circular(20),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.15),
//             offset: Offset(0, 5),
//             blurRadius: 10,
//           ),
//         ],
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,  // Align to top to avoid overflow
//         children: [
//           // Left side: User Meal Stats - Wrap it in Expanded
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   children: [
//                     const Icon(Icons.restaurant, color: Colors.white, size: 20),
//                     const SizedBox(width: 8),
//                     Text(
//                       'Total Servings: 21',
//                       style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 10),
//
//                 Row(
//                   children: [
//                     const Icon(Icons.fastfood, color: Colors.white, size: 20),
//                     const SizedBox(width: 8),
//                     Text(
//                       'Calories Remaining: 1500 kcal',
//                       style: TextStyle(fontSize: 14, color: Colors.white70),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 10),
//
//                 Row(
//                   children: [
//                     const Icon(Icons.check_circle, color: Colors.white, size: 20),
//                     const SizedBox(width: 8),
//                     Text(
//                       'Meals Completed: 10',
//                       style: TextStyle(fontSize: 14, color: Colors.white70),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//
//           // Right side: Profile Picture or Avatar (Using CircleAvatar for initials)
//           CircleAvatar(
//             radius: 35,  // Adjust size of the avatar
//             backgroundColor: Colors.white,  // Background color for the avatar
//             child: Text(
//               'JD',  // Initials or any text to represent the user
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.purple.shade800,  // Change to purple for initials
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   // Meal Completion Progress Bar (LinearProgressIndicator)
//   Widget _buildMealProgressBar() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Text(
//           'Meal Completion Progress',
//           style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.teal),
//         ),
//         const SizedBox(height: 10),
//         LinearProgressIndicator(
//           value: mealCompletionPercentage / 100,
//           backgroundColor: Colors.grey[300], // Keep the background light gray
//           valueColor: const AlwaysStoppedAnimation<Color>(Colors.deepPurple),  // Changed to deep purple
//           minHeight: 8,
//         ),
//         const SizedBox(height: 10),
//         Text(
//           '${mealCompletionPercentage.toStringAsFixed(0)}% Completed',
//           style: const TextStyle(fontSize: 14, color: Colors.teal),
//         ),
//       ],
//     );
//   }
//
//   // Animated Recipe Item (Card for each recipe)
//   Widget _buildAnimatedRecipeItem(RecipeItem recipe, int index) {
//     return AnimatedContainer(
//       duration: const Duration(milliseconds: 300),
//       margin: const EdgeInsets.only(right: 16),
//       width: 200, // Card width
//       child: Card(
//         elevation: 5,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(15),
//         ),
//         color: Colors.deepOrange[50], // Changed to a lighter orange
//         child: InkWell(
//           onTap: () {
//             // Handle tap (for example, navigate to a detailed recipe screen)
//           },
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Icon(
//                   Icons.restaurant_menu,
//                   size: 40,
//                   color: Colors.amber,  // Changed to amber
//                 ),
//                 const SizedBox(height: 16),
//                 Text(
//                   'Recipe ${recipe.index + 1}',
//                   style: const TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.deepPurple,  // Changed to deep purple
//                   ),
//                 ),
//                 const SizedBox(height: 8),
//                 Text(
//                   'Suggested Recipe for Day ${recipe.index + 1}',
//                   style: TextStyle(
//                     fontSize: 14,
//                     color: Colors.grey[600],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// // RecipeItem class for simulating a recipe object
// class RecipeItem {
//   final int index;
//   RecipeItem(this.index);
// }

import 'package:flutter/material.dart';
import 'ingredient_based_recipe_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  final double _sliderValue = 3;  // Default slider value (e.g., servings, portions)
  final List<RecipeItem> _recipes = List.generate(7, (index) => RecipeItem(index));
  double mealCompletionPercentage = 60.0; // Example value for progress

  // Example data for calorie-wise foods
  final List<Map<String, String>> calorieWiseFoods = [
    {"name": "Apple", "calories": "95 kcal"},
    {"name": "Banana", "calories": "105 kcal"},
    {"name": "Chicken Breast", "calories": "165 kcal"},
    {"name": "Salmon", "calories": "206 kcal"},
    {"name": "Spinach", "calories": "23 kcal"},
  ];

  // Example data for health-conscious foods
  final List<Map<String, dynamic>> healthFoods = [
    {"name": "Broccoli", "description": "Packed with vitamins, fiber, and antioxidants", "icon": Icons.nature},
    {"name": "Almonds", "description": "High in healthy fats and protein", "icon": Icons.nature_people},
    {"name": "Oats", "description": "Perfect for heart health and digestion", "icon": Icons.grain},
    {"name": "Avocado", "description": "Rich in healthy fats and potassium", "icon": Icons.fastfood},
    {"name": "Blueberries", "description": "Full of antioxidants and vitamin C", "icon": Icons.local_florist},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meal Planner', style: TextStyle(
            color: Colors.white
        ),),
        backgroundColor: Colors.deepPurple[700],  // Dark purple for high contrast
        elevation: 4.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // User Summary Section
              _buildUserSummary(),

              const SizedBox(height: 20),

              // Meal Completion Progress (Linear Progress Bar)
              _buildMealProgressBar(),
              const SizedBox(height: 20),

              Text(
                'Weekly Recipe Suggestions',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal[800],  // Dark teal for contrast
                ),
              ),
              const SizedBox(height: 10),

              // Horizontal ListView for Weekly Recipes
              SizedBox(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _recipes.length,
                  itemBuilder: (context, index) {
                    return _buildAnimatedRecipeItem(_recipes[index], index);
                  },
                ),
              ),

              const SizedBox(height: 20),

              // Calorie-Wise Foods Section
              Text(
                'Calorie-Wise Foods',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal[800],  // Dark teal for contrast
                ),
              ),
              const SizedBox(height: 10),
              _buildCalorieWiseFoods(),

              const SizedBox(height: 20),

              // Good for Health Section
              Text(
                'Good for Health Foods',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal[800],  // Dark teal for contrast
                ),
              ),
              const SizedBox(height: 10),
              _buildHealthFoods(),
            ],
          ),
        ),
      ),
    );
  }

  // User Summary: Displays user's meal data
  Widget _buildUserSummary() {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.deepPurple[400]!, Colors.deepPurple[600]!],  // Deeper purple gradient for modern look
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(0, 5),
            blurRadius: 15,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.restaurant, color: Colors.white, size: 22),
                    SizedBox(width: 8),
                    Text(
                      'Total Servings: 21',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: 10),

                Row(
                  children: [
                    Icon(Icons.fastfood, color: Colors.white, size: 22),
                    SizedBox(width: 8),
                    Text(
                      'Calories Remaining: 1500 kcal',
                      style: TextStyle(fontSize: 14, color: Colors.white70),
                    ),
                  ],
                ),
                SizedBox(height: 10),

                Row(
                  children: [
                    Icon(Icons.check_circle, color: Colors.white, size: 22),
                    SizedBox(width: 8),
                    Text(
                      'Meals Completed: 10',
                      style: TextStyle(fontSize: 14, color: Colors.white70),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Right side: Profile Picture or Avatar
          CircleAvatar(
            radius: 35,
            backgroundColor: Colors.white,
            child: Text(
              'JD',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple[800]!,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Meal Completion Progress Bar
  Widget _buildMealProgressBar() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          'Meal Completion Progress',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.teal[800]),
        ),
        const SizedBox(height: 10),
        LinearProgressIndicator(
          value: mealCompletionPercentage / 100,
          backgroundColor: Colors.grey[300],
          valueColor: AlwaysStoppedAnimation<Color>(Colors.deepPurple[700]!),
          minHeight: 8,
        ),
        const SizedBox(height: 10),
        Text(
          '${mealCompletionPercentage.toStringAsFixed(0)}% Completed',
          style: TextStyle(fontSize: 14, color: Colors.teal[800]),
        ),
      ],
    );
  }

  // Animated Recipe Item (Card for each recipe)
  Widget _buildAnimatedRecipeItem(RecipeItem recipe, int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.only(right: 16),
      width: 220,
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        color: Colors.orange[50],
        child: InkWell(
          onTap: () {
            // Handle tap (for example, navigate to a detailed recipe screen)
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Icon(
                  Icons.restaurant_menu,
                  size: 40,
                  color: Colors.amber[700],
                ),
                const SizedBox(height: 16),
                Text(
                  'Recipe ${recipe.index + 1}',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple[700]!,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Suggested Recipe for Day ${recipe.index + 1}',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Calorie-Wise Foods Section
  Widget _buildCalorieWiseFoods() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: calorieWiseFoods.map((food) => _buildFoodItem(food)).toList(),
      ),
    );
  }

  // Food Item without Card
  Widget _buildFoodItem(Map<String, String> food) {
    double calories = double.tryParse(food['calories']?.replaceAll(RegExp(r'[^0-9.]'), '') ?? '0') ?? 0;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.fastfood,
            size: 32,
            color: Colors.deepPurple,
          ),
          const SizedBox(height: 8),
          Text(
            food['name']!,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
              overflow: TextOverflow.ellipsis,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 6),
          Text(
            '${food['calories']} cal',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }

  // Health Foods Section
  Widget _buildHealthFoods() {
    return Column(
      children: [
        ...healthFoods.map((food) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            elevation: 5.0,
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16.0),
              leading: Icon(
                food['icon'],
                color: Colors.green[700],
                size: 32.0,
              ),
              title: Text(
                food['name']!,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.green[800],
                ),
              ),
              subtitle: Text(
                food['description']!,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.grey[600],
              ),
              onTap: () {
                print('Tapped on ${food['name']}');
              },
            ),
          );
        }),
      ],
    );
  }
}

// RecipeItem class for simulating a recipe object
class RecipeItem {
  final int index;
  RecipeItem(this.index);
}




