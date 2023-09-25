import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BizPro from Figma -- an AKD project',
      theme: ThemeData(
        colorSchemeSeed: const Color(0xFFECF9FF),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  static const List<String> menuItems = [
    'Home',
    'About',
    'Services',
    'Reviews',
    'Support'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 1000,
            width: double.infinity,
            color: const Color(0xFFECF9FF),
            child: Stack(
              children: [
                SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      'images/art1.png',
                      alignment: Alignment.topRight,
                    )),
                SizedBox(
                  width: double.infinity,
                  child: Image.asset('images/art2.png',
                      alignment: Alignment.bottomRight),
                ),
                Container(
                  padding: const EdgeInsets.all(22),
                  margin: const EdgeInsets.only(top: 50, left: 135, right: 135),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text.rich(TextSpan(children: [
                          TextSpan(
                              text: 'B',
                              style: TextStyle(
                                color: Color(0xFF00E5CC),
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Airbnb Cereal",
                              )),
                          TextSpan(
                              text: 'izpro',
                              style: TextStyle(
                                color: Color(0xFF060640),
                                fontFamily: "Airbnb Cereal",
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                              ))
                        ])),
                        Container(
                          height: 30,
                          padding: const EdgeInsets.all(5),
                          child: ListView.separated(
                            itemBuilder: (ctx, index) => Text(
                              menuItems[index],
                              style: TextStyle(
                                color: index == 0
                                    ? const Color(0xFF00E5CC)
                                    : const Color(0xFF828297),
                                fontFamily: 'Airbnb Cereal',
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                            separatorBuilder: (ctx, index) => const SizedBox(
                              width: 25,
                            ),
                            itemCount: 5,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                        Row(
                          children: [
                            TextButton(
                              style: TextButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 30),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6))),
                              onPressed: () {
                                debugPrint('Sign in tapped');
                              },
                              child: const Text(
                                'Sign in',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Airbnb Cereal',
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            TextButton(
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 30,
                                    vertical: 20,
                                  ),
                                  backgroundColor: const Color(0xFF060640),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                                onPressed: () {
                                  debugPrint('Free Trial tapped');
                                },
                                child: const Text(
                                  'Free Trial',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Airbnb Cereal',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ))
                          ],
                        )
                      ]),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
