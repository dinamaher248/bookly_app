import 'package:bookly_app/constants/app_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants/images_path.dart';

class CustomBookImageItem extends StatelessWidget {
  const CustomBookImageItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(AppRouter.bookDetailsViewPath),
      child: SizedBox(
        height: 125,
        child: AspectRatio(
          aspectRatio: 2.5 / 4, // w / h
          child: Container(
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(8),
            //   color: Colors.red,
              // image: DecorationImage(
              //   fit: BoxFit.fill,
              //   image: AssetImage(ImagesPath.testImage),
              // ),
            // ),
          ),
        ),
      ),
    );
  }
}
