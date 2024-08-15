
import 'package:booklyapp/core/utls/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utls/approuter.dart';
import '../../../../../core/utls/assets.dart';
import 'customrating.dart';

class BestSellerListitem extends StatelessWidget {
  const BestSellerListitem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(Approuter.bookdetails);
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(16),
                    image: const DecorationImage(
                        fit: BoxFit.fill, image: AssetImage(AssetsData.test))),
              ),
            ),
          const  SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: const Text(
                      'HARRY POTTERrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr',
                      maxLines: 2,
                      style: Styles.styles18,
                    ),
                  ),
               const   SizedBox(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'J.k',
                        style: Styles.styles18.copyWith(fontSize: 14),
                      ),
                    ],
                  ),
               const   SizedBox(),
                  SizedBox(
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '30 #',
                          style: Styles.styles18.copyWith(fontSize: 14),
                        ),
                    const   Padding(
                        
                         padding:  EdgeInsets.symmetric(horizontal:  16.0),
                         child: Customrating(),
                       ),
                       
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
