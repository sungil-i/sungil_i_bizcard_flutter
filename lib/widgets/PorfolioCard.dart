import 'package:flutter/material.dart';

import '../models/PortfolioModel.dart';

class PortfolioCard extends StatelessWidget {
  final int idx;
  final String name, desc, imageUrl;

  // code here
  PortfolioCard(
      {required this.idx,
      required this.name,
      required this.desc,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    // code here
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        side: BorderSide(color: Color(0xFFDDDDDD)),
      ),
      margin: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Container(width: 70, height: 70, child: Image.network(imageUrl)),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  desc,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
