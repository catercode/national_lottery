import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/ball.jpg"),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.amber.withOpacity(0.9),
          ),
          child: Column(
            children: [
              const Text(
                "National Lottery",
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 40.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: Card(
                      color: const Color.fromARGB(255, 255, 255, 255)
                          .withOpacity(0.9),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            ...List.generate(6, (index) {
                              return Center(
                                child: CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.amber,
                                  child: CircleAvatar(
                                    radius: 18,
                                    backgroundColor: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    child: Text(
                                      index.toString(),
                                      style:
                                          const TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Expanded(
                child: Row(
                  children: [
                    const Expanded(
                      flex: 2,
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Draw Your Lottery Numbers",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Card(
                        color: Colors.black.withOpacity(0.5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Place your lucky numbers",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GridView.count(
                                  crossAxisCount: 10,
                                  crossAxisSpacing: 5,
                                  mainAxisSpacing: 5,
                                  children: List.generate(99, (index) {
                                    return Center(
                                      child: CircleAvatar(
                                        radius: 25,
                                        backgroundColor: const Color.fromARGB(
                                            255, 255, 255, 255),
                                        child: CircleAvatar(
                                          radius: 18,
                                          backgroundColor: Colors.amber,
                                          child: Text(
                                            index.toString(),
                                            style: const TextStyle(
                                                color: Colors.black),
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: MediaQuery.of(context).size.width / 6,
                    //   child: Card(
                    //     color: Colors.black.withOpacity(0.5),
                    //     child: const Column(
                    //       crossAxisAlignment: CrossAxisAlignment.center,
                    //       children: [
                    //         Padding(
                    //           padding: EdgeInsets.all(8.0),
                    //           child: Text(
                    //             "Last Draw",
                    //             style: TextStyle(
                    //               color: Color.fromARGB(255, 255, 255, 255),
                    //               fontSize: 20.0,
                    //               fontWeight: FontWeight.w900,
                    //             ),
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
