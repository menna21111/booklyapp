import 'package:booklyapp/core/utls/styles.dart';
import 'package:booklyapp/features/home/pres/views/widgets/customhorizantallist.dart';
import 'package:flutter/material.dart';

import 'CustomAppBAR.dart';
import 'bestsellerlist.dart';

class HomeviewBody extends StatelessWidget {
  const HomeviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [SliverToBoxAdapter(child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          CustomAppBar(),
          Customhorizantallist(),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'Best seller',
                  style: Styles.styles18,
                ),
              ],
            ),
          )
        ],
      ),
    ) ,)
    ,SliverToBoxAdapter(child:Padding(
      padding: EdgeInsets.symmetric(horizontal:  20,),
      child: Bestsellerlist(),
    ) ,)],
    );

  }
}
