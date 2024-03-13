import 'package:flutter/material.dart';
import 'package:tjs_gym_app/custom_widget/sized_box/cust_box.dart';

class FullBodyWorkoutScreen extends StatefulWidget {
  const FullBodyWorkoutScreen({super.key});

  @override
  State<FullBodyWorkoutScreen> createState() => _FullBodyWorkoutScreenState();
}

class _FullBodyWorkoutScreenState extends State<FullBodyWorkoutScreen> {
  List youArr = [
    {"image": const Icon(Icons.sports_gymnastics_outlined), "title": "barbel"},
    {"image": const Icon(Icons.sports_gymnastics_outlined), "title": "barbel"},
    {"image": const Icon(Icons.sports_gymnastics_outlined), "title": "barbel"},
  ];

  List exerArr = [
    {"name": "set 1"}

  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                centerTitle: true,
                elevation: 0,
                leading: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back_ios),
                ),
                actions: [],
              )
            ];
          },
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            color: Colors.white,
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Full Body Workout",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 12),
                                ),
                                Text(
                                  "10 times",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 8),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      CustBox(
                        height: 10,
                      ),
                      // IconTitleRow(
                      //   title: 'Schedule Workout',
                      //   time: "5/27 09:00 AM",
                      //   color: Colors.yellow,
                      //   icon: Icons.sports_gymnastics_sharp,
                      //   onPressed: () {},
                      // ),
                      CustBox(),
                      // IconTitleRow(
                      //     title: "Difficulty",
                      //     time: "beginner",
                      //     onPressed: () {},
                      //     color: Colors.red,
                      //     icon: Icons.sports_gymnastics_outlined),
                      CustBox(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "You will need",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Item",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: media.width * 0.5,
                        child: ListView.builder(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: youArr.length,
                            itemBuilder: (context, index) {
                              var yObj = youArr[index] as Map? ?? {};
                              return Container(
                                margin: const EdgeInsets.all(8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: media.width * 0.35,
                                      width: media.width * 0.35,
                                      decoration: BoxDecoration(
                                        color: Colors.yellow[300],
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      alignment: Alignment.center,
                                      child: Icon(
                                        yObj["image"].icon,
                                        // weight: media.width * 0.2,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        yObj["title"],
                                        style: const TextStyle(
                                            color: Colors.black, fontSize: 12),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }),
                      ),
                      Container(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Exercise",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Sets",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      ListView.builder(
                          padding: EdgeInsets.zero,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: exerArr.length,
                          itemBuilder: (context, index) {
                            var sObj = exerArr[index] as Map? ?? {};
                            return Container(
                              color: Colors.red,
                            );
                          })
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
