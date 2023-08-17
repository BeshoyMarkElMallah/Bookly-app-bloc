import 'package:bookly_bloc/Features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_bloc/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_bloc/core/utils/app_router.dart';
import 'package:bookly_bloc/core/utils/assets.dart';
import 'package:bookly_bloc/core/widgets/custom_error_widget.dart';
import 'package:bookly_bloc/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kBookDetailsView,
                          extra: state.books[index]);
                    },
                    child: CustomBookImage(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks?.thumbnail ??
                              AssetsData.networkImg,
                    ),
                  ),
                );
              },
              scrollDirection: Axis.horizontal,
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errmsg: state.message);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
