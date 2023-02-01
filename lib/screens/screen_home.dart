import 'package:flutter/material.dart';
import 'package:sungil_i_bizcard_flutter/PortfolioList.dart';

import '../widgets/PorfolioCard.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // code here

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 120,
          height: 120,
          child: Image(),
        ),
        SizedBox(
          height: 10.0,
          width: double.infinity,
        ),
        Container(
          height: 1.0,
          width: double.infinity,
          color: Colors.grey,
        ),
        SizedBox(
          height: 10.0,
          width: double.infinity,
        ),
        Text(
          "래리 페이지",
        ),
        SizedBox(
          height: 5.0,
          width: double.infinity,
        ),
        Text(
          "larrypage@google.com",
        ),
        SizedBox(
          height: 5.0,
          width: double.infinity,
        ),
        Text(
          "Mobile Software Engineer",
        ),
        SizedBox(
          height: 20.0,
          width: double.infinity,
        ),
        ElevatedButton(onPressed: onButtonClickd, child: Text("포트폴리오")),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [],
          ),
        )
      ],
    );
  }

  void onButtonClickd() {
    // code here
  }
}
