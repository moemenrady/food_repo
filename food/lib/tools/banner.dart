import 'package:flutter/material.dart';

class BannersList extends StatelessWidget {
  const BannersList(
      {super.key, required this.scrollController, required this.image});
  final ScrollController scrollController;
  final List image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Container(
        height: 250,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: ListView.builder(
          controller: scrollController,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, i) {
            return Container(
              width: 400,
              margin: EdgeInsets.only(right: 30),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "images/head.png",
                  fit: BoxFit.cover,
                ),
              ),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(96, 0, 0, 0),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(4, 4),
                        color: const Color.fromARGB(95, 0, 0, 0),
                        blurRadius: 10),
                    BoxShadow(
                        offset: Offset(-4, -4),
                        color: const Color.fromARGB(95, 0, 0, 0),
                        blurRadius: 10),
                  ]),
            );
          },
          itemCount: 3,
        ),
      ),
    );
  }
}
