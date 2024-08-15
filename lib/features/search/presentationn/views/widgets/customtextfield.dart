import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Customtextfield extends StatelessWidget {
  const Customtextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return    Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: TextField(
            style: TextStyle(fontSize: 14,),
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide:const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'search here',
                suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.magnifyingGlass,
                      size: 16,
                    ))),
          ),
        );
  }
}
