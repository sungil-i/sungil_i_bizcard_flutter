import 'package:flutter/material.dart';
import 'package:sungil_i_bizcard_flutter/PortfolioList.dart';

import '../widgets/PorfolioCard.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // code here
  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
          clipBehavior: Clip.hardEdge,
          width: 120,
          height: 120,
          // child: Image.network("https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202207/01/xportsnews/20220701132454535hoam.jpg"),
          child: Image(
            image: AssetImage('assets/profile_image.jpg'),
          ),
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
        Visibility(
          visible: isShow,
          child: SizedBox(
            height: 330,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  PortfolioCard(
                      idx: PortfolioList.items[0].idx,
                      name: PortfolioList.items[0].name,
                      desc: PortfolioList.items[0].desc,
                      imageUrl: PortfolioList.items[0].imageUrl,
                  ),
                  PortfolioCard(
                    idx: PortfolioList.items[1].idx,
                    name: PortfolioList.items[1].name,
                    desc: PortfolioList.items[1].desc,
                    imageUrl: PortfolioList.items[1].imageUrl,
                  ),
                  PortfolioCard(
                    idx: PortfolioList.items[2].idx,
                    name: PortfolioList.items[2].name,
                    desc: PortfolioList.items[2].desc,
                    imageUrl: PortfolioList.items[2].imageUrl,
                  ),
                  PortfolioCard(
                    idx: PortfolioList.items[3].idx,
                    name: PortfolioList.items[3].name,
                    desc: PortfolioList.items[3].desc,
                    imageUrl: PortfolioList.items[3].imageUrl,
                  ),
                  PortfolioCard(
                    idx: PortfolioList.items[4].idx,
                    name: PortfolioList.items[4].name,
                    desc: PortfolioList.items[4].desc,
                    imageUrl: PortfolioList.items[4].imageUrl,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  void onButtonClickd() {
    // code here
    setState(() {
      isShow = !isShow;
    });
  }
}
