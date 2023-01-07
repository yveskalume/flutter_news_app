import 'package:flutter/material.dart';

class CategoriesRow extends StatelessWidget {
  const CategoriesRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
      child: Row(
        children: const [
          Text(
            "Category 1",
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(width: 16,),
          Text(
            "Category 2",
            style: TextStyle(
                color: Colors.red,
                fontSize: 16,
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(width: 16,),
          Text(
            "Category 4",
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(width: 16,),
          Text(
            "Category 5",
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(width: 16,),
          Text(
            "Category 6",
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(width: 16,),
          Text(
            "Category 7",
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(width: 16,),
          Text(
            "Category 8",
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
