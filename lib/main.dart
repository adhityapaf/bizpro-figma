import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                const _Navbar(),
                Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 189, right: 41),
                      child: Image.asset('images/arrow_illustration.png'),
                    )),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 135, right: 55, top: 260),
                  child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Perfect place for your business promotion ✌️',
                                style: TextStyle(
                                    fontFamily: 'Airbnb Cereal',
                                    fontSize: 50,
                                    fontWeight: FontWeight.w700,
                                    height: 1.3,
                                    color: Color(0xFF060640)),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                'Business generally promote their brand, products, and services by identifying audience.',
                                style: TextStyle(
                                  color: Color(0xFF9090A7),
                                  fontFamily: 'Airbnb Cereal',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  height: 1.75,
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              IntrinsicHeight(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 60,
                                      child: TextButton(
                                        onPressed: () =>
                                            debugPrint('get started tapped'),
                                        style: TextButton.styleFrom(
                                            backgroundColor:
                                                const Color(0xFF060640),
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 36,
                                              vertical: 22,
                                            ),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(6))),
                                        child: const Text(
                                          'Get Started',
                                          style: TextStyle(
                                            fontFamily: 'Airbnb Cereal',
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            height: 1.07,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(60)),
                                      child: Image.asset(
                                        'images/play_icon.png',
                                        alignment: Alignment.center,
                                        height: 60,
                                        width: 60,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 70,
                              ),
                              Image.asset('images/hero_comment.png'),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Image.asset('images/hero_image.png'),
                      ]),
                ),
              ],
            ),
          ),
          Container(
            height: 661.15,
            width: double.infinity,
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 135),
            child: Column(children: [
              Container(
                margin: const EdgeInsets.only(top: 108),
                child: Column(children: [Text('How it works')]),
              )
            ]),
          )
        ]),
      ),
    );
  }
}

class _Navbar extends StatelessWidget {
  const _Navbar();

  @override
  Widget build(BuildContext context) {
    final List<String> menuItems = [
      'Home',
      'About',
      'Services',
      'Reviews',
      'Support'
    ];
    return Container(
      padding: const EdgeInsets.all(22),
      margin: const EdgeInsets.only(top: 50, left: 135, right: 135),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
            itemBuilder: (ctx, index) => NavbarMenu(menu: menuItems[index]),
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
    );
  }
}

class NavbarMenu extends StatefulWidget {
  const NavbarMenu({super.key, required this.menu});
  final String menu;

  @override
  State<NavbarMenu> createState() => _NavbarMenuState();
}

class _NavbarMenuState extends State<NavbarMenu> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    String menu = widget.menu;
    Color color = const Color(0xFF828297);
    if (menu == 'Home' || isActive == true) color = const Color(0xFF00E5CC);
    return InkWell(
      onTap: () => debugPrint('$menu tapped'),
      onHover: (value) {
        setState(() => isActive = value);
      },
      child: Text(
        menu,
        style: TextStyle(
          color: color,
          fontFamily: 'Airbnb Cereal',
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
      ),
    );
  }
}
