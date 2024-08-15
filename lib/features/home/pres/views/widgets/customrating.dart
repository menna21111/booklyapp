import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utls/styles.dart';

class Customrating extends StatelessWidget {
  const Customrating({super.key,  this.mainAxisAlignment=MainAxisAlignment.spaceAround});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Icon(
          size: 14,
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          '4.8',
          style: Styles.styles18,
        ),
        SizedBox(
          width: 5,
        ),
        Opacity(opacity: .5, child: Text('(2390)'))
      ],
    );
  }
}
