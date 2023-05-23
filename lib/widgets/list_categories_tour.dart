import 'package:flutter/material.dart';

class TourCategory extends StatelessWidget {
  const TourCategory({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imageTourCategoryList = [
      'assets/images/Rectangle 4.png',
      'assets/images/Rectangle 6.png',
      'assets/images/Rectangle 8.png',
      'assets/images/Rectangle 10.png',
    ];

    List<String> categoryList = [
      'Danau',
      'Gunung',
      'Pantai',
      'Desa',
    ];

    return SizedBox(
      height: 120,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: categoryList.length,
        itemBuilder: ((context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 17),
            child: Stack(
              children: [
                SizedBox(
                  width: 89,
                  height: 113,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      imageTourCategoryList[index],
                    ),
                  ),
                ),
                Container(
                  width: 89,
                  height: 113,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: LinearGradient(
                      begin: const Alignment(0.0, 0.0),
                      end: const Alignment(0.003, 1),
                      colors: [
                        Colors.white.withOpacity(0.0),
                        const Color(0xff000000)
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 86,
                  right: 28,
                  child: Text(
                    categoryList[index],
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
