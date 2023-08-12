import 'package:bookly_bloc/constants.dart';
import 'package:bookly_bloc/core/utils/assets.dart';
import 'package:bookly_bloc/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.red,
                image: const DecorationImage(
                    image: AssetImage(AssetsData.jungleBook), fit: BoxFit.fill),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  'The Jungle Book',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const Text(
                'Rudyard Kipling',
                style: Styles.textStyle14,
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Text(
                    "19.99 \$",
                    style: Styles.textStyle20
                        .copyWith(fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
