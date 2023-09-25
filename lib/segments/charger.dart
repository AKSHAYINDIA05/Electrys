import 'package:electrys/segments/bargraph.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class ChargeState extends StatefulWidget {
  const ChargeState({super.key});

  @override
  State<ChargeState> createState() => _ChargeStateState();
}

class _ChargeStateState extends State<ChargeState> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(42, 41, 41, 0.5),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Charge stats',
                  style: TextStyle(fontFamily: 'Cera Pro'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GradientText(
                      'Month',
                      style: const TextStyle(
                          fontFamily: 'Cera Pro', fontWeight: FontWeight.bold),
                      colors: const [
                        // Color.fromRGBO(103, 58, 183, 0),
                        // Color.fromRGBO(103, 58, 183, 0.2),
                        // Colors.white,
                        Color.fromRGBO(103, 58, 183, 1),
                        Color.fromRGBO(103, 58, 183, 0.8),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Year',
                      style: const TextStyle(
                          fontFamily: 'Cera Pro',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(CupertinoIcons.train_style_one),
                  ],
                ),
              ],
            ),
            BarGraph(),
          ],
        ),
      ),
    );
  }
}
