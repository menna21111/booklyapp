import 'package:booklyapp/features/home/pres/views/widgets/CustomListitem.dart';
import 'package:flutter/material.dart';

class Similiarbooklist extends StatelessWidget {
  const Similiarbooklist({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16),
            child: Customlistitem(),
          );
        },
      ),
    );
  }
}
