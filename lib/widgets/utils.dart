

import 'package:grocery_app/models/category_subsection.dart';
import '../models/subcategory.dart';
import 'colorhelper.dart';
import 'package:grocery_app/models/category.dart';


class Utils{
  static List<Category> getMockedCategories(){
    return[
      Category(
        color:  AppColors.Green,
        name: "Stakes",
        imgName: "stake",
        icon: 'pizza',
        subCategories: [
          SubCategory(
              color: AppColors.BlackLight,
            name: 'Cerdo',
            imgName: "fishsauce",
            icon:'pizza',
            parts: [
              CategoryPart(
                 name: "Course-1",
                 imgName: "fishsauce",
                 isSelected: false,
              ),
              CategoryPart(
                name: "Course-2",
                imgName: "fishsauce",
                isSelected: false,
              ),
              CategoryPart(
                name: "Course-3",
                imgName: "fishsauce",
                isSelected: false,
              ),
              CategoryPart(
                name: "Course-4",
                imgName: "fishsauce",
                isSelected: false,
              ),
            ],
          ),
          SubCategory(
              color: AppColors.Amber,
              name: 'Vergo',
              imgName: "cheesesause",
              icon: 'pizza',
            parts: [],
          ),
          SubCategory(
              color: AppColors.Red,
              name: 'Lasso',
              imgName: "stake",
              icon: 'pizza', parts: [],
          ),
          SubCategory(
              color: AppColors.Purple,
              name: 'Cancer',
              imgName: "samosa",
              icon: 'pizza', parts: [],
          ),
          SubCategory(
              color: AppColors.Pink,
              name: 'Sergio',
              imgName: "fishsauce",
              icon: 'pizza', parts: [],
          ),
          SubCategory(
              color: AppColors.Amber,
              name: 'Vicros',
              imgName: "cheesesause",
              icon: 'pizza', parts: [],
          ),
        ]
      ),
      Category(
        color:  AppColors.Grey,
        name: "Cheese Mazala",
        imgName: "cheesesause",
        icon: 'wine',
        subCategories: [],
      ),
      Category(
        color:  AppColors.Red,
        name: "Small Chops",
        imgName: "samosa",
        icon:'fish',
        subCategories: [],
      ),
      Category(
        color:  AppColors.Grey,
          name: "Vegetarian Menu",
        imgName: "cheesesause",
        icon: 'burger',
        subCategories: [],
      ),
      Category(
        color:  AppColors.Green,
        name: "Saused Beef",
        imgName: "stake",
        icon: 'Vegan Food',
        subCategories: [],
      ),

    ];
  }
}