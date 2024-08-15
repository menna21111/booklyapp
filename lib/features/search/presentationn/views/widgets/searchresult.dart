import 'package:flutter/material.dart';

import '../../../../home/pres/views/widgets/custmitemvertical.dart';


class Searchresult extends StatelessWidget {
  const Searchresult({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,

      padding: EdgeInsets.zero,
      itemCount: 20,
      itemBuilder: (context, index) {
        return  const Padding(
         padding:  EdgeInsets.symmetric(vertical: 20,horizontal: 35),
          child: BestSellerListitem(),
        );
      },
    );
  }
}
