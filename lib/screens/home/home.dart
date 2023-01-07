import 'package:flutter/material.dart';
import 'package:flutter_news_app/components/categories_row.dart';
import 'package:flutter_news_app/components/features_item.dart';
import 'package:flutter_news_app/components/new_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          FeaturedItem(),
          CategoriesRow(),
          NewItem(),
          NewItem(),
          NewItem(),
          NewItem(),
          NewItem(),
          NewItem(),
        ],
      )
    );
  }
}
