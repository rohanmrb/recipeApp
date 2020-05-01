import 'package:flutter/material.dart';

import './tabs_screen.dart';
import './meal.dart';
import './data.dart';
import './ctg.dart';
import './categories.dart';
import './details_screen.dart';
import './drawer.dart';
import './favorites_screen.dart';
import './filters_screem.dart';
import './item.dart';
import './meal_item.dart';
import './meals_screen.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  FavoritesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text('You have no favorites yet - start adding some!', style: TextStyle(color: Colors.white60),),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favoriteMeals[index].id,
            title: favoriteMeals[index].title,
            imageUrl: favoriteMeals[index].imageUrl,
            duration: favoriteMeals[index].duration,
            affordability: favoriteMeals[index].affordability,
            complexity: favoriteMeals[index].complexity,
          );
        },
        itemCount: favoriteMeals.length,
      );
    }
  }
}
