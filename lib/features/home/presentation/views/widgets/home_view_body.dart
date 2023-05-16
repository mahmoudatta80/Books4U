import 'package:flutter/material.dart';
import 'package:readify_app/constant.dart';
import 'package:readify_app/features/home/presentation/views/widgets/custem_home_view_app_bar.dart';
import 'package:readify_app/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:readify_app/features/home/presentation/views/widgets/newest_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.all(
                16,
              ),
              child: CustomHomeViewAppBar(),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                start: 16,
              ),
              child: FeaturedBooksListView(),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'New Books',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: NewestBooksListView(),
            ),
          ],
        ),
      ),
    );
  }
}
