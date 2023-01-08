import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../data/model/new.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({Key? key, required this.featuredNew}) : super(key: key);
  final New featuredNew;

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
            children: [
              SizedBox(
                  height: 400,
                  child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      child: CachedNetworkImage(
                          imageUrl: featuredNew.media.first.url,
                          placeholder: (context, url) =>
                              const Center(child: CircularProgressIndicator(),),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                          fit: BoxFit.cover))),
              const SizedBox(
                height: 8,
              ),
              Text(
                featuredNew.title,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 24),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                featuredNew.abstract,
                style: const TextStyle(color: Colors.grey, fontSize: 18),
                textAlign: TextAlign.left,
              )
            ],
          ),
        ));
  }
}
