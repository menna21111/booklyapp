import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utls/styles.dart';

class Customrating extends StatelessWidget {
  const Customrating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.spaceAround, required this.rating, required this.numrating});
  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final num numrating;
  @override

  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      const  Icon(
          size: 14,
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
       const SizedBox(
          width: 5,
        ),
        Text(
        '$rating',
          style: Styles.styles18,
        ),
        SizedBox(
          width: 5,
        ),
        Opacity(opacity: .5, child: Text('($numrating)'))
      ],
    );
  }
}
