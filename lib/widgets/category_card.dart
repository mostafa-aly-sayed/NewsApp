
import 'package:news_app_ui_setup/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.Category});

  final CategoryModel Category;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return CategoryView(
            category: Category.Title,
          );
        },),);

      },
      child: Padding(padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 85,
          width: 160,
          child: Center(
            child: Text(Category.Title, style: TextStyle(color: Colors.white),),),

          decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(12),
            color: Colors.amber,
            image: DecorationImage(
              image: AssetImage(Category.AssestImage),
              fit:BoxFit.fill,
            ),


          ),

        ),
      ),
    );
  }
}
