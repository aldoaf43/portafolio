import 'package:flutter/material.dart';
import 'package:portafolio/utils/utils.dart';

class homePage extends StatefulWidget {
  const homePage({ Key? key }) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
           SliverAppBar(
            pinned: true,
            snap: false,
            floating: true,
            expandedHeight: Hpercentage(context, 10),
            flexibleSpace:  const FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              centerTitle: true,
              title: Text('My Portfolio'),
            ),
            elevation: 50,
            shadowColor: Color.fromARGB(200, 40, 75, 99),
            backgroundColor: Color.fromARGB(240, 40, 75, 99),
            centerTitle: true,
          ),

          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  width: Wpercentage(context, 10),
                  child: Card(
                    shadowColor: Color.fromARGB(200, 60, 110, 113),
                    color: Color.fromARGB(255, 60, 110, 113),
                    child: Text("Hello"),
                  ),
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}