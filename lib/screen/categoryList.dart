import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learn_language_app/constant.dart';
import 'package:learn_language_app/model/unitModel.dart';
import 'package:learn_language_app/screen/categoryDetail.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  final List<Unit> units = [
    Unit(
        progress: 0.5,
        title: 'Introduction',
        unit: 'UNIT 1',
        color: purple,
        percentage: "50"),
    Unit(
        progress: 0.5,
        title: 'Jobs and school',
        unit: 'UNIT 2',
        color: pink,
        percentage: "50"),
    Unit(
        progress: 0.25,
        title: 'Food and drinks',
        unit: 'UNIT 3',
        color: purple,
        percentage: "25"),
    Unit(
        progress: 0.0,
        title: 'Places and directions',
        unit: 'UNIT 4',
        color: pink,
        percentage: "0"),
    Unit(
        progress: 0.0,
        title: 'Lifestyle',
        unit: 'UNIT 5',
        color: purple,
        percentage: "0"),
    Unit(
        progress: 0.45,
        title: 'Song and Rhyme',
        unit: 'UNIT 6',
        color: pink,
        percentage: "45"),
    Unit(
        progress: 0.10,
        title: 'University',
        unit: 'UNIT 7',
        color: purple,
        percentage: "10"),
    Unit(
        progress: 0.65,
        title: 'Universe',
        unit: 'UNIT 8',
        color: pink,
        percentage: "65"),
    Unit(
        progress: 0.75,
        title: 'Gardening',
        unit: 'UNIT 9',
        color: purple,
        percentage: "75"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(80)),
            image: DecorationImage(
              image: AssetImage("assets/mainUnit.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.only(bottomRight: Radius.circular(80)),
              color: purple.withOpacity(0.6)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: const Icon(
              Icons.arrow_back_ios,
              size: 20,
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(
                  Icons.circle,
                  size: 50,
                ),
              )
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "ENGLISH",
                  style: regularFont(18, Colors.white, FontWeight.normal),
                ),
                Text(
                  "MAIN UNITS",
                  style: regularFont(30, Colors.white, FontWeight.bold),
                ),
              ],
            ),
          ),
        )
      ]),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Container(
            alignment: Alignment.topCenter,
            height: MediaQuery.of(context).size.height * 0.75,
            child: Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: ListView.builder(
                    itemCount: units.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CategoryDetail()),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: units[index].color,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          units[index].unit,
                                          style: mainStyle(14, Colors.white),
                                        ),
                                        Text(
                                          units[index].title,
                                          style: regularFont(14, Colors.white,
                                              FontWeight.normal),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30),
                                    child: SizedBox(
                                        height: 75,
                                        child: CircularPercentIndicator(
                                          radius: 25,
                                          lineWidth: 3,
                                          percent: units[index].progress,
                                          center: Text(
                                            "${units[index].percentage}%",
                                            style: regularFont(12, Colors.white,
                                                FontWeight.normal),
                                          ),
                                        )),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }))),
      ),
    );
  }
}
