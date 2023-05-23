import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:traveling_mobile_app/widgets/card_category_list.dart';
import 'package:traveling_mobile_app/widgets/list_categories_tour.dart';

import '../widgets/top_destination_list.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Container(
            margin: const EdgeInsets.only(top: 37, left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('assets/images/menu_iconsvg.svg'),
                    Image.asset('assets/images/profile_photo.png')
                  ],
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Hey Jono',
                      style: TextStyle(
                          color: Color(0xff686868),
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Jelajahi dan Temukan Tempat Favorit mu Di Dunia',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
                    )
                  ],
                ),
                const SizedBox(
                  height: 38.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 1.39,
                      height: 48,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xff686868),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search',
                          icon: Icon(Icons.search),
                        ),
                      ),
                    ),
                    Container(
                      width: 56,
                      height: 48,
                      padding: const EdgeInsets.symmetric(
                          vertical: 14, horizontal: 18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xff2B2B2B),
                      ),
                      child: SvgPicture.asset('assets/images/filter.svg'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 21.0,
                ),
                const CategoryListCard(),
                const SizedBox(
                  height: 33.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Categories',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Lihat Semua',
                      style: TextStyle(color: Color(0xff8A8A8A), fontSize: 13),
                    )
                  ],
                ),
                const SizedBox(
                  height: 11.0,
                ),
                const TourCategory(),
                const SizedBox(
                  height: 39.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Top Destinasi',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Lihat Semua',
                      style: TextStyle(color: Color(0xff8A8A8A), fontSize: 13),
                    )
                  ],
                ),
                const SizedBox(
                  height: 11.0,
                ),
                const SizedBox(
                  height: 200,
                  child: TopDestination(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
