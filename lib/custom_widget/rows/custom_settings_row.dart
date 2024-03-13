import 'package:flutter/material.dart';
import 'package:tjs_gym_app/custom_widget/sized_box/cust_box.dart';

class CustomSettingsRow extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTapped;

  const CustomSettingsRow(
      {super.key,
      required this.icon,
      required this.title,
      required this.onTapped});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: InkWell(
        onTap: onTapped,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: const TextStyle(color: Colors.black, fontSize: 10),
            ),
            const SizedBox(
              width: 200,
            ),
            const Icon(Icons.arrow_right),
          ],
        ),
      ),
    );
  }
}
