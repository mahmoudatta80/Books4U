import 'package:flutter/material.dart';
import 'package:readify_app/features/search/presentation/views/widgets/search_bar.dart';
import 'package:readify_app/features/search/presentation/views/widgets/search_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SearchBar(),
          ),
          Divider(
            color: const Color(0xff6DA5C0).withOpacity(.3),
            endIndent: 8,
            indent: 8,
          ),
          const SearchListView(),
        ],
      ),
    );
  }
}
