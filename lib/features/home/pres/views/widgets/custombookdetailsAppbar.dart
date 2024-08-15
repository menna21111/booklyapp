import 'package:booklyapp/core/utls/approuter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Custombookdetailsappbar extends StatelessWidget {
  const Custombookdetailsappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(Approuter.homescreen);
              },
              icon: const Icon(Icons.close)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_cart_outlined))
        ],
      ),
    );
  }
}
