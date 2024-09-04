import 'package:booklyapp/core/utls/styles.dart';
import 'package:booklyapp/features/home/data/models/bookmodel.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utls/approuter.dart';
import '../../../../../core/utls/assets.dart';
import 'customrating.dart';

class BestSellerListitem extends StatelessWidget {
  const BestSellerListitem({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(Approuter.bookdetails,extra: book);
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
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            book.volumeInfo.imageLinks?.thumbnail??''))),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child:  Text(
                      '${book.volumeInfo.title}',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.styles18,
                    ),
                  ),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '${book.volumeInfo.authors![0]}',
                        style: Styles.styles18.copyWith(fontSize: 14),
                      ),
                    ],
                  ),
                  const SizedBox(),
                  SizedBox(
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'free',
                          style: Styles.styles18.copyWith(fontSize: 14),
                        ),
                         Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Customrating(rating:book.volumeInfo.averageRating?? 0,numrating:book.volumeInfo.ratingsCount??0 ,),
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
