import 'package:flutter/material.dart';

import 'custmitemvertical.dart';

class Bestsellerlist extends StatelessWidget {
  const Bestsellerlist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
      physics:const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 20,
      itemBuilder: (context, index) {
        return  const Padding(
         padding:  EdgeInsets.symmetric(vertical: 10),
          child: BestSellerListitem(),
        );
      },
    );
  }
}
