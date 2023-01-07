import 'package:flutter/material.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8))),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(
                  height: 400,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    child: Image(
                      image: AssetImage("images/new_image.jpg"),
                      fit: BoxFit.cover,
                    ),
                  )),
              SizedBox(
                height: 8,
              ),
              Text(
                "Lorem ipsum",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 24),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Lorem ipsum sit dolor",
                style: TextStyle(color: Colors.grey, fontSize: 18),
                textAlign: TextAlign.left,
              )
            ],
          ),
        ));
  }
}
