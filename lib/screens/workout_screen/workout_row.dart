import 'package:flutter/material.dart';
import 'package:tjs_gym_app/custom_widget/buttons/rounded_button.dart';
import 'package:tjs_gym_app/custom_widget/sized_box/cust_box.dart';

class WorkoutRow extends StatelessWidget {
  final Map wObj;

  const WorkoutRow({super.key, required this.wObj});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 2),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: const Alignment(0, 0.8),
          colors: <Color>[
            Colors.yellow[600]!,
            Colors.yellow[700]!,
            Colors.yellow[800]!,
          ],
        ),
      ),
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                wObj["title"].toString(),
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              CustBox(
                height: 5,
              ),
              Text(
                  "${wObj["exercise"].toString()} | ${wObj["time"].toString()}"),
              CustBox(
                height: 4,
              ),
              RoundButton(
                title: "View",
                onPressed: () {
                  Navigator.push(context, wObj["navigation"]);
                },
                size: 20,
              ),
              CustBox(
                height: 5,
              ),
            ],
          )),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.50),
                    borderRadius: BorderRadius.circular(40),
                  )),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Icon((wObj["icon"] as Icon).icon),
              )
            ],
          )
        ],
      ),
    );
  }
}
