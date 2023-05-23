// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CategoryListCard extends StatelessWidget {
  const CategoryListCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> categoryList = [
      'All',
      'Nearby',
      'Favourite',
      'Recommended',
      'Populer',
      'New',
      'Top Rated',
      'Best Deals',
    ];

    return SizedBox(
      height: 40,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: categoryList.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Chip(
                label: Text(
                  categoryList[index],
                ),
                backgroundColor: const Color(0xffE0E0E0),
              ),
            );
          }),),
    );
  }
}
