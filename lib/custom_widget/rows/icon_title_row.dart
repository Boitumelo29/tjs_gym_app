import 'package:flutter/material.dart';
import 'package:tjs_gym_app/custom_widget/sized_box/cust_box.dart';

class IconTitleRow extends StatelessWidget {
  final IconData icon;
  final String title;
  String? time;
  final VoidCallback onPressed;
  final Color color;

  IconTitleRow(
      {super.key,
      required this.title,
      this.time,
      required this.onPressed,
      required this.color,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 50, // Set a fixed height or adjust as needed
        child: InkWell(
          onTap: onPressed,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  alignment: Alignment.center,
                  child: Icon(icon),
                ),
                CustBox(
                  width: 8,
                ),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ),
                SizedBox(
                  width: 120,
                  child: Text(
                    time ?? "0 min",
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ),
                CustBox(
                  width: 8,
                ),
                SizedBox(
                  width: 25,
                  height: 25,
                  child: Container(
                    width: 25,
                    height: 25,
                    alignment: Alignment.center,
                    child: const Icon(Icons.next_plan_outlined),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
