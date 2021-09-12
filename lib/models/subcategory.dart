import 'dart:ui';
import 'package:grocery_app/models/category.dart';
import 'package:grocery_app/models/category_subsection.dart';

class SubCategory extends Category{
  List<CategoryPart>? parts;

  SubCategory({
    this.parts,
    String? name,
    String? icon,
    Color? color,
    String? imgName
}): super(
    name:name,
    icon: icon,
    color: color,
    imgName: imgName
  );
}