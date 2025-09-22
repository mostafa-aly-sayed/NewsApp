import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/categories_listview.dart';
import 'package:news_app_ui_setup/widgets/category_card.dart';
import 'package:news_app_ui_setup/widgets/news_list_view.dart';
import 'package:news_app_ui_setup/widgets/news_list_view_builder.dart';
import 'package:news_app_ui_setup/widgets/news_tile.dart';
import '../widgets/AppBar_title.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const AppbarTitle(),
      ),
      body:
      Padding(padding: const EdgeInsets.symmetric(horizontal: 16),
        child:CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListview(),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 32,),),
            const NewsListViewBuilder(
              category: 'general',
            ),
          ],
        )
      ),

    );
  }
}

// Padding(padding: const EdgeInsets.symmetric(horizontal: 16),
// child: Column(
// children: [
// CategoriesListview(),
// const SizedBox(
// height: 32,
// ),
// const Expanded(child: NewsListView(),),
// ],
// ),
// ),