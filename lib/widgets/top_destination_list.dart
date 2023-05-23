import 'package:flutter/material.dart';

class TopDestination extends StatelessWidget {
  const TopDestination({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> topDestinationList = {
      "Pantai Ubud": "Bali, Indonesia",
      "Gunung Fuji": "Nganjuk, Japang"
    };

    List topDestinationName = topDestinationList.keys.toList();
    List topDestinationLocate = topDestinationList.values.toList();
    List topDestinationImage = [
      'assets/images/Rectangle 12.png',
      'assets/images/Rectangle 15.png',
    ];

    return ListView.builder(
      itemCount: topDestinationList.length,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemBuilder: ((context, index) {
        return Container(
          margin: const EdgeInsets.only(right: 17),
          child: Stack(
            children: [
              Container(
                width: 194,
                height: 194,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset(topDestinationImage[index], fit: BoxFit.cover,),
              ),
              Positioned(
                top: 137,
                right: 8,
                left: 8,
                child: Container(
                  width: 178,
                  height: 48,
                  decoration: BoxDecoration(
                    color: const Color(0xffDCDCDC).withOpacity(0.44),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 9, right: 13, left: 13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              topDestinationName[index],
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 4.0,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 4.0,
                                ),
                                const Icon(
                                  Icons.location_pin,
                                  color: Colors.white,
                                  size: 9,
                                ),
                                Text(
                                  topDestinationLocate[index],
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.favorite,
                          color: Colors.redAccent,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
