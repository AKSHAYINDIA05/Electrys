import 'package:electrys/public.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isPublic = false;
  void toggle() {
    setState(() {
      isPublic = !isPublic;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Stack(
                children: [
                  Center(
                    child: Container(
                      height: 0.5,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(100),
                          bottomRight: Radius.circular(100),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.deepPurple,
                            blurRadius: 50,
                            spreadRadius: 20,
                            offset: Offset.fromDirection(5, 5),
                          ),
                        ],
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(103, 58, 183, 1),
                            Color.fromRGBO(103, 58, 183, 0.8),
                            Color.fromRGBO(103, 58, 183, 0.6),
                            Color.fromRGBO(103, 58, 183, 0.4),
                            Color.fromRGBO(103, 58, 183, 0.2),
                            Color.fromRGBO(103, 58, 183, 0),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.center,
                          // center: Alignment.topCenter,
                          // radius: 1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 42, 41, 41),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Icon(
                        Icons.settings,
                        size: 30,
                        color: Color.fromRGBO(103, 58, 183, 1),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 0,
                  ),
                  //Public and Private Containers
                  GestureDetector(
                    onTap: toggle,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(42, 41, 41, 0.5),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: isPublic
                                    ? const Color.fromRGBO(42, 41, 41, 1)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  'Private',
                                  style: TextStyle(
                                      fontFamily: 'Cera Pro',
                                      fontSize: isPublic ? 20 : 10),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: isPublic
                                    ? Colors.transparent
                                    : const Color.fromRGBO(42, 41, 41, 1),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  'Public',
                                  style: TextStyle(
                                      fontFamily: 'Cera Pro',
                                      fontSize: isPublic ? 10 : 20),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //Profile Container
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(42, 41, 41, 0.5),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(42, 41, 41, 1),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Icon(Icons.charging_station),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(42, 41, 41, 1),
                              shape: BoxShape.circle,
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Icon(Icons.person),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const PublicPage(),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
