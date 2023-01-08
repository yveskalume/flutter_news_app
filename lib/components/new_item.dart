import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../data/model/new.dart';

class NewItem extends StatelessWidget {
  const NewItem({
    Key? key,
    required this.newsItem,
  }) : super(key: key);

  final New newsItem;

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
              SizedBox(
                width: 100,
                height: 120,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  child: CachedNetworkImage(
                      imageUrl: newsItem.media.first.url,
                      placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator(),),
                      errorWidget: (context, url, error) =>
                      const Icon(Icons.error),
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
                  Text(
                    newsItem.title,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [Text(newsItem.publishedDate)],
                  )
                ],
              )),
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
