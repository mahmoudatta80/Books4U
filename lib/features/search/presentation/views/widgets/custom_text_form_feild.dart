import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:readify_app/features/search/presentation/manager/search_cubit/search_cubit.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return TextFormField(
      controller: searchController,
      onChanged: (value) {
        BlocProvider.of<SearchCubit>(context).searchForMovie(value);
      },
      cursorColor: Colors.white60,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white60,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white60,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        label: const Text(
          'Search for book...',
          style: TextStyle(
            color: Colors.white38,
          ),
        ),
        suffixIcon: IconButton(
          onPressed: () {
            searchController.text = '';
            BlocProvider.of<SearchCubit>(context).searchForMovie('');
          },
          icon: const Icon(
            Icons.close,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
