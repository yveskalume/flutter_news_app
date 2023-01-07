import 'package:flutter/material.dart';

class NewItem extends StatelessWidget {
  const NewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8))),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              const SizedBox(
                width: 100,
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  child: Image(
                      image: AssetImage("images/new_image.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Category 1",
                    style: TextStyle(color: Colors.red, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "Lorem ipsum sit dolor",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: const [Text("4 hours ago")],
                  )
                ],
              )
              ),
              Container(
                height: 120,
                margin: const EdgeInsets.all(8),
                alignment: Alignment.topCenter,
                child: const Icon(Icons.favorite_outline),
              )
            ],
          ),
        ));
  }
}
