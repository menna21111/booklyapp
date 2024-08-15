import 'package:booklyapp/core/utls/styles.dart';
import 'package:flutter/material.dart';

import 'CustomListitem.dart';
import 'custombookdetailsAppbar.dart';
import 'custombuttons.dart';
import 'customrating.dart';
import 'similiarbooklist.dart';

class BookdetailsViewbody extends StatelessWidget {
  const BookdetailsViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [SliverFillRemaining(child:   Column(
      children: [
        const Custombookdetailsappbar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .32, vertical: 18),
          child:const Customlistitem(),
        ),
        const Text(
          'eeeeeeeeeee',
          style: Styles.styles20,
        ),
        const Opacity(
            opacity: .7,
            child:  Text(
              'eeeeeeeeeee',
              style: Styles.styles18,
            )),
        const Padding(
          padding: EdgeInsets.all(5.0),
          child: Align(alignment: Alignment.center, child: Customrating()),
        ),
        const SizedBox(
          height: 15,
        ),
        const Custombuttons(),
      const  Expanded(
          child:  SizedBox(
            height: 20,
          ),
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also Like',
              style: Styles.styles16
                  .copyWith(fontWeight: FontWeight.w800, color: Colors.white),
            )),
        const SizedBox(
          height: 10,
        ),
      const  Similiarbooklist(),
        const SizedBox(
          height: 10,
        )
      ],
    ))],
    );
    
  }
}
