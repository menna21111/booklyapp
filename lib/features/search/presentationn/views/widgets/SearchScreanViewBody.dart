
import 'package:flutter/material.dart';

import 'customtextfield.dart';
import 'searchresult.dart';

class SearchScreanViewBody extends StatelessWidget {
  const SearchScreanViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      
      children: [
        SizedBox(height: 60,),
       Customtextfield(), SizedBox(height: 20,),Expanded(child: Searchresult())
      ],
    );
  }
}
