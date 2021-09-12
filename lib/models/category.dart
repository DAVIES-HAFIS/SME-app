import 'dart:ui';

import 'package:grocery_app/models/subcategory.dart';

class Category{
   String? name;
 String? icon;
 Color? color;
 String? imgName;
 List<SubCategory>? subCategories;

  Category({
    this.color, this.name, this.icon, this.imgName, this.subCategories,
});
}