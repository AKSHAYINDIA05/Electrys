import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class BatteryUsage extends StatefulWidget {
  const BatteryUsage({super.key});

  @override
  State<BatteryUsage> createState() => _BatteryUsageState();
}

class _BatteryUsageState extends State<BatteryUsage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              height: 10,
              width: 10,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.white, Color(0xFFFF9800)],
                ),
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 10,
              width: 10,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.white, Color(0xFF9C27B0)],
                ),
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 10,
              width: 10,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.white, Color(0xFF673AB7)],
                ),
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 10,
              width: 10,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.white, Colors.grey],
                ),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Low efficiency',
              style: TextStyle(fontFamily: 'Cera Pro'),
            ),
            Text(
              'Medium efficiency',
              style: TextStyle(fontFamily: 'Cera Pro'),
            ),
            Text(
              'High efficiency',
              style: TextStyle(fontFamily: 'Cera Pro'),
            ),
            Text(
              'Phantom drain',
              style: TextStyle(fontFamily: 'Cera Pro'),
            ),
          ],
        ),
        const SizedBox(
          width: 50,
        ),
        const Column(
          children: [
            Text(
              '32 hr',
              style: TextStyle(fontFamily: 'Cera Pro'),
            ),
            Text(
              '122 hr',
              style: TextStyle(fontFamily: 'Cera Pro'),
            ),
            Text(
              '63 hr',
              style: TextStyle(fontFamily: 'Cera Pro'),
            ),
            Text(
              '68 hr',
              style: TextStyle(fontFamily: 'Cera Pro'),
            ),
          ],
        ),
        const SizedBox(
          width: 30,
        ),
        Column(
          children: [
            GradientText(
              '12%',
              colors: [Colors.white, Colors.orange],
            ),
            GradientText(
              '43%',
              colors: [Colors.white, Colors.purple],
            ),
            GradientText(
              '22%',
              colors: [Colors.white, Colors.deepPurple],
            ),
            GradientText(
              '23%',
              colors: [Colors.white, Colors.grey],
            ),
          ],
        )
      ],
    );
  }
}
