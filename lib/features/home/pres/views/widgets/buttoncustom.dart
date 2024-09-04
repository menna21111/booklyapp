import 'package:flutter/material.dart';

import '../../../../../core/utls/styles.dart';

class Buttoncustom extends StatelessWidget {
  const Buttoncustom(
      {super.key,
      required this.textcolor, 
      required this.backgroundcolor,
       this.borderRadius, required this.text,required this.onPressed});
  final Color textcolor;
  final Color backgroundcolor;
  final BorderRadius ? borderRadius;
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 50,
      child: TextButton(
          onPressed:onPressed,
          style: TextButton.styleFrom(
            backgroundColor: backgroundcolor,
              shape: RoundedRectangleBorder(
                  borderRadius: borderRadius??BorderRadius.circular(12))),
          child: Text(
           text,
            style: Styles.styles20.copyWith(color: textcolor,fontSize: 18),
          )),
    );
  }
}
