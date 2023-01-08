import 'package:flutter/material.dart';
import 'package:flutter_news_app/data/service/new_service.dart';

import '../../components/categories_row.dart';
import '../../components/features_item.dart';
import '../../components/new_item.dart';
import '../../data/model/new.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final NewService newService = NewService();

  late Future<List<New>> news;

  @override
  void initState() {
    news = newService.getAll();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
            future: news,
            builder: (context, snapshot) {
              if (snapshot.hasData && snapshot.data != null) {
                if (snapshot.data!.isEmpty) {
                  return const Center(
                    child: Text(
                      "No more information", style: TextStyle(fontSize: 24),),
                  );
                }
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      FeaturedItem(featuredNew: snapshot.data!.first,),
                      // const CategoriesRow(),
                      ListView.builder(
                          physics: const ClampingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: snapshot.data?.length,
                          itemBuilder: (contex, index) {
                            New item = snapshot.data![index];
                            return NewItem(newsItem: item);
                          })
                    ],
                  ),
                );
              } else if (snapshot.hasError) {
                return const Center(
                  child: Text(
                    "An error occured",
                    style: TextStyle(fontSize: 24),
                  ),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            }));
  }
}
