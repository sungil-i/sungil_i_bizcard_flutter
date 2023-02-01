import 'package:flutter/material.dart';

import '../models/PortfolioModel.dart';

class PortfolioCard extends StatelessWidget {
  final int idx;
  final String name, desc, imageUrl;

  const PortfolioCard(
      {required this.idx,
      required this.name,
      required this.desc,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        side: BorderSide(color: Color(0xFFDDDDDD)),
      ),
      margin: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 15,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Container(
                clipBehavior: Clip.hardEdge,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                width: 70,
                height: 70,
                child: Image.network(imageUrl)),
            Column(
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  desc,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          ],
        ),
      ),
    );
  }
}
