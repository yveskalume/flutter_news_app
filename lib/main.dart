import 'package:flutter/material.dart';
import 'package:flutter_news_app/screens/favorites/favorite.dart';
import 'package:flutter_news_app/screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SafeArea(child: RootPage()),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int pageIndex = 0;
  String? pageTitle;
  Widget currentPage = const HomePage();

  @override
  Widget build(BuildContext context) {
    switch (pageIndex) {
      case 0:
        pageTitle = "Home";
        currentPage = const HomePage();
        break;
      case 1:
        pageTitle = "Favorites";
        currentPage = const FavoritePage();
        break;
      default:
        Exception("Page not found");
        break;
    }

    return Scaffold(
      appBar: AppBar(
        title: Container(
          alignment: Alignment.center,
          child: Text(
            pageTitle!,
            style: const TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: currentPage,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite")
        ],
        onTap: (index) => {
          setState(() => {pageIndex = index})
        },
      ),
    );
  }
}
