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

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      //appBar: AppBar(backgroundColor: Colors.black,),
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: DUMMY_CATEGORIES
            .map((catData) => CategoryItem(
          catData.id,
          catData.title,
          catData.color,
        ))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
      ) ,
    );
  }
}
