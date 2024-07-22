import 'package:flutter/material.dart';

class slidinganimtetedbuilder extends StatelessWidget {
  const slidinganimtetedbuilder({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: const Text(
              'Read more book',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
