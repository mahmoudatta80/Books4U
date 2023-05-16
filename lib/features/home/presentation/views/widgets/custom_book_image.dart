import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({Key? key, required this.image}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          16,
        ),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: CachedNetworkImage(
          imageUrl: image,
          fit: BoxFit.fill,
          errorWidget: (context, url, error) => const Center(
            child: Icon(
              Icons.error_outline,
            ),
          ),
        ),
      ),
    );
  }
}