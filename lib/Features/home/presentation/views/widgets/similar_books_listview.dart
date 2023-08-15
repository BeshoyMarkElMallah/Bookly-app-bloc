import 'package:bookly_bloc/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_bloc/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: CustomBookImage(
              imageUrl:
                  'https://imageio.forbes.com/specials-images/imageserve/5f85be4ed0acaafe77436710/0x0.jpg?format=jpg&width=1200',
            ),
          );
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
