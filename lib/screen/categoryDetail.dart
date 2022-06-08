import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learn_language_app/constant.dart';
import 'package:learn_language_app/main.dart';
import 'package:learn_language_app/model/chapterModel.dart';
import 'package:learn_language_app/model/exerciseModel.dart';
import 'package:learn_language_app/model/unitModel.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CategoryDetail extends StatefulWidget {
  const CategoryDetail({
    Key? key,
  }) : super(key: key);

  @override
  State<CategoryDetail> createState() => _CategoryDetailState();
}

class _CategoryDetailState extends State<CategoryDetail> {
  final List<Chapter> chapter = [
    Chapter(chapter: "Chapter 1", title: "Introduction", progress: 100),
    Chapter(chapter: "Chapter 2", title: "School", progress: 47),
    Chapter(chapter: "Chapter 3", title: "Jobs", progress: 34),
    Chapter(chapter: "Chapter 4", title: "Job Interview", progress: 12),
    Chapter(chapter: "Chapter 5", title: "University", progress: 0),
  ];

  final List<Exercise> exercises = [
    Exercise(icon: "assets/grammars.gif", title: "Grammar", color: purple),
    Exercise(icon: "assets/listens.gif", title: "Listening", color: pink),
    Exercise(icon: "assets/writings.gif", title: "Writing", color: purple),
    Exercise(icon: "assets/readings.gif", title: "Reading", color: pink)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            color: purple,
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(80)),
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
          child: Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "UNIT 2",
                      style: regularFont(30, Colors.white, FontWeight.bold),
                    ),
                    Text(
                      "JOBS AND SCHOOL",
                      style: regularFont(18, Colors.white, FontWeight.normal),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 100,
              ),
              CircularPercentIndicator(
                radius: 25,
                lineWidth: 3,
                percent: 0.5,
                center: Text(
                  "50%",
                  style: regularFont(12, Colors.white, FontWeight.normal),
                ),
              )
            ],
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: chapter.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      chapter[index].chapter,
                                      style: mainStyle(
                                        14,
                                        Colors.black,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 25,
                                    ),
                                    Text(
                                      chapter[index].title,
                                      style: regularFont(
                                          14, Colors.black, FontWeight.w300),
                                    ),
                                    const Spacer(),
                                    Text(
                                      "${chapter[index].progress}%",
                                      style: mainStyle(14, Colors.black),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Divider(
                                  color: purple,
                                  thickness: 1,
                                )
                              ],
                            ),
                          );
                        }),
                    const SizedBox(
                      height: 10,
                    ),
                    Text("General Exercise Unit 2",
                        style: mainStyle(16, purple)),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: exercises.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: exercises[index].color),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        exercises[index].icon,
                                        scale: 2.5,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        exercises[index].title,
                                        style: mainStyle(14, Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ))),
      ),
    );
  }
}
