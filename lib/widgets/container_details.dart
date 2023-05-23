import 'package:flutter/material.dart';
import 'package:traveling_mobile_app/text_style.dart';

class ContainerDetailWidget extends StatelessWidget {
  final String title;
  final String desc;
  final String distance;
  final int elevation;
  final String difficulty;

  const ContainerDetailWidget(
      {super.key,
      required this.title,
      required this.desc,
      required this.distance,
      required this.elevation,
      required this.difficulty});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.black26,
      ),
      child: Column(
        children: [
           ListTile(
            contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
            title: Text(
              title,
              style: titleText
            ),
            trailing: const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
           Text(
            desc,
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
          const SizedBox(
            height: 19.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  const Text(
                    'Distance',
                    style: descText
                  ),
                  Text(
                    distance,
                    style: const TextStyle(
                      color: Color(0xffC8C8C8),
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  const Text(
                    'Elevation',
                    style: descText
                  ),
                  Text(
                    elevation.toString(),
                    style: const TextStyle(
                      color: Color(0xffC8C8C8),
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  const Text(
                    'Difficulty',
                    style: descText
                  ),
                  Text(
                    difficulty,
                    style: const TextStyle(
                      color: Color(0xffC8C8C8),
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 22.0,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 47,
            child: ElevatedButton(
              onPressed: () {},
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white)),
              child: const Text(
                'Join Trip',
                style: TextStyle(color: Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}
