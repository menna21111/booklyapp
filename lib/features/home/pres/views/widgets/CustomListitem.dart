import 'package:flutter/material.dart';

import '../../../../../core/utls/assets.dart';
import '../../../data/models/bookmodel.dart';
import 'package:cached_network_image/cached_network_image.dart';
class Customlistitem extends StatelessWidget {
  const Customlistitem({
    super.key, required this.imageurl,
  });
  final String imageurl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.5 / 4,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
       imageUrl: imageurl,
       errorWidget:(context, url, error) => Icon(Icons.error),
        ),
      ),
    );
  }
}
