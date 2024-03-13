import 'package:flutter/material.dart';
import 'package:tjs_gym_app/screens/home_screen/home_page.dart';
import 'package:tjs_gym_app/screens/workout_screen/exercises/full_body_workout_screen.dart';
import 'package:tjs_gym_app/screens/workout_screen/workout_row.dart';

class WorkoutScreen extends StatefulWidget {
  const WorkoutScreen({super.key});

  @override
  State<WorkoutScreen> createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  @override
  List workOutArr = [
    {
      "title": "Full Body Workout",
      "exercise": "11 exercise",
      "time": "40 min",
      "icon": const Icon(Icons.woman),
      "navigation": MaterialPageRoute(
          builder: (BuildContext context) => FullBodyWorkoutScreen())
    },
    {
      "title": "Upper Body Workout",
      "exercise": "15 exercise",
      "time": "50 min",
      "icon": const Icon(Icons.sports_gymnastics_outlined),
      "navigation":
          MaterialPageRoute(builder: (BuildContext context) => EGPage5())
    },
    {
      "title": "Lower Body Workout",
      "exercise": "20 exercise",
      "time": "20 min",
      "icon": const Icon(Icons.sports_gymnastics_sharp),
      "navigation":
          MaterialPageRoute(builder: (BuildContext context) => EGPage5())
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(),
            const Text(
              "Workout Schedule",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            ListView.builder(
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: workOutArr.length,
                itemBuilder: (context, index) {
                  var wObj = workOutArr[index] as Map ?? {};
                  return WorkoutRow(
                    wObj: wObj,
                  );
                })
          ],
        ),
      ),
    );
  }
}
