import 'package:flutter/material.dart';

import '../../../../../core/utls/assets.dart';

class Customlistitem extends StatelessWidget {
  const Customlistitem({super.key});

  @override eeeee
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
                fit: BoxFit.fill, image: AssetImage(AssetsData.test))),
      ),
    );
  }
}
