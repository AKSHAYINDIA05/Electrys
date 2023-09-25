import 'package:electrys/segments/batteryusage.dart';
import 'package:electrys/segments/charger.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class PublicPage extends StatefulWidget {
  const PublicPage({super.key});

  @override
  State<PublicPage> createState() => _PublicPageState();
}

class _PublicPageState extends State<PublicPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
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
                        'Battery Usage',
                        style: TextStyle(fontFamily: 'Cera Pro'),
                      ),
                      GradientText(
                        'Details',
                        style: const TextStyle(
                            fontFamily: 'Cera Pro',
                            fontWeight: FontWeight.bold),
                        colors: const [
                          // Color.fromRGBO(103, 58, 183, 0),
                          // Color.fromRGBO(103, 58, 183, 0.2),
                          // Colors.white,
                          Color.fromRGBO(103, 58, 183, 1),
                          Color.fromRGBO(103, 58, 183, 0.8),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            RichText(
                              text: TextSpan(
                                style: DefaultTextStyle.of(context).style,
                                children: const <TextSpan>[
                                  TextSpan(
                                    text: '87',
                                    style: TextStyle(
                                      color: Colors
                                          .white, // Set white color for "87"
                                      fontSize:
                                          20, // Adjust the font size if needed
                                      fontFamily: 'Cera Pro',
                                    ),
                                  ),
                                  TextSpan(
                                    text: '%',
                                    style: TextStyle(
                                      color:
                                          Colors.grey, // Set grey color for "%"
                                      fontSize:
                                          20, // Adjust the font size if needed
                                      fontFamily: 'Cera Pro',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Text(
                              'Avg. Efficiency',
                              style: TextStyle(
                                color: Colors.grey, // Set grey color for "%"
                                fontSize: 10, // Adjust the font size if needed
                                fontFamily: 'Cera Pro',
                              ),
                            ),
                          ],
                        ),
                        // const SizedBox(
                        //   width: 10,
                        // ),
                        Column(
                          children: [
                            RichText(
                              text: TextSpan(
                                style: DefaultTextStyle.of(context).style,
                                children: const <TextSpan>[
                                  TextSpan(
                                    text: '12',
                                    style: TextStyle(
                                      color: Colors
                                          .white, // Set white color for "87"
                                      fontSize:
                                          20, // Adjust the font size if needed
                                      fontFamily: 'Cera Pro',
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'd ',
                                    style: TextStyle(
                                      color:
                                          Colors.grey, // Set grey color for "%"
                                      fontSize:
                                          20, // Adjust the font size if needed
                                      fontFamily: 'Cera Pro',
                                    ),
                                  ),
                                  TextSpan(
                                    text: '3',
                                    style: TextStyle(
                                      color: Colors
                                          .white, // Set grey color for "%"
                                      fontSize:
                                          20, // Adjust the font size if needed
                                      fontFamily: 'Cera Pro',
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'hr',
                                    style: TextStyle(
                                      color:
                                          Colors.grey, // Set grey color for "%"
                                      fontSize:
                                          20, // Adjust the font size if needed
                                      fontFamily: 'Cera Pro',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Text(
                              'Time since',
                              style: TextStyle(
                                color: Colors.grey, // Set grey color for "%"
                                fontSize: 10, // Adjust the font size if needed
                                fontFamily: 'Cera Pro',
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 0,
                        ),
                        Column(
                          children: [
                            RichText(
                              text: TextSpan(
                                style: DefaultTextStyle.of(context).style,
                                children: const <TextSpan>[
                                  TextSpan(
                                    text: '39',
                                    style: TextStyle(
                                      color: Colors
                                          .white, // Set white color for "87"
                                      fontSize:
                                          20, // Adjust the font size if needed
                                      fontFamily: 'Cera Pro',
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'min',
                                    style: TextStyle(
                                      color:
                                          Colors.grey, // Set grey color for "%"
                                      fontSize:
                                          20, // Adjust the font size if needed
                                      fontFamily: 'Cera Pro',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Text(
                              'Last Charge',
                              style: TextStyle(
                                color: Colors.grey, // Set grey color for "%"
                                fontSize: 10, // Adjust the font size if needed
                                fontFamily: 'Cera Pro',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 15,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Colors.white,
                                Color.fromRGBO(255, 152, 0, 1),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 100,
                        height: 15,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Colors.white,
                                Colors.purple,
                              ],
                            ),
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 50,
                        height: 15,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Colors.white,
                                Colors.deepPurple,
                              ],
                            ),
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 80,
                        height: 15,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Colors.white,
                              Colors.grey,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const BatteryUsage(),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ChargeState(),
        ],
      ),
    );
  }
}
