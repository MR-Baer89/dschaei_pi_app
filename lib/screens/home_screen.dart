import 'dart:ui';
import 'package:dschaei_pi_app/widgets/my_rating_bar.dart';
import 'package:flutter/material.dart';

import '../models/categories.dart';
import '../widgets/food_container_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(218, 168, 112, 225),
                      Color.fromARGB(255, 200, 122, 255)
                    ],
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                  ),
                ),
                child: const Text(
                  'Food Menu',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.icecream),
                title: const Text('Mogli\'s Cup'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.icecream),
                title: const Text('Balu\'s Cup'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.icecream),
                title: const Text('Ice Cream Stick'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.icecream),
                title: const Text('Ice Cup'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset("assets/backgrounds/bg_mainscreen.png",
                fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 80, 16, 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Hamburger Icon to open the drawer
                  GestureDetector(
                    onTap: () {
                      _scaffoldKey.currentState?.openDrawer();
                    },
                    child: const Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Choose Your Favorite \nSnack",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 16),
                  const Categories(), // Assuming Categories() is a separate widget
                  const SizedBox(height: 32),
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 0.2),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(16))),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16, 24, 16, 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(children: [
                                const Text(
                                  'Angi´s Yummy Burger',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                const Expanded(child: SizedBox()),
                                Icon(Icons.star,
                                    color: Colors.pink[300], size: 16),
                                Text("4,8",
                                    style: TextStyle(color: Colors.grey[350]))
                              ]),
                              const SizedBox(height: 8),
                              const Text(
                                "Delish vegan burger \nthat tastes like heaven",
                                style: TextStyle(color: Colors.white),
                              ),
                              const SizedBox(height: 24),
                              const Text("₳ 13.99",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                              const SizedBox(height: 64),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const HomeScreen()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(9),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.white,
                                            spreadRadius: 0.5,
                                            blurRadius: 3,
                                            offset: Offset(0, -1)),
                                      ],
                                      gradient: const LinearGradient(
                                          colors: [
                                            Color.fromARGB(218, 168, 112, 225),
                                            Color.fromARGB(255, 200, 122, 255)
                                          ],
                                          begin: Alignment.centerRight,
                                          end: Alignment.centerLeft)),
                                  child: const Padding(
                                    padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                                    child: Text("Add to order",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12)),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  const Text("We Recommend",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white)),
                  const SizedBox(height: 16),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          const SizedBox(width: 16), // Abstand zum linken Rand
                          _buildFoodItem(
                            title: "Mogli's Cup",
                            flavor: "Strawberry ice cream",
                            imagePath: "assets/graphics/cat_cupcakes_3D.png",
                            price: '8.99',
                          ),
                          const SizedBox(width: 16),
                          _buildFoodItem(
                            title: "Balu's Cup",
                            flavor: "Pistachio ice cream",
                            imagePath: "assets/graphics/Ice.cream.png",
                            price: '8.99',
                          ),
                          const SizedBox(width: 16),
                          _buildFoodItem(
                            title: "Ice Cream Stick",
                            flavor: "Vanilla ice cream",
                            imagePath: "assets/graphics/ice cream stick_3D.png",
                            price: '8.99',
                          ),
                          const SizedBox(width: 16),
                          _buildFoodItem(
                            title: "Ice Cup",
                            flavor: "Chocolate ice cream",
                            imagePath: "assets/graphics/Icecream_3D.png",
                            price: '8.99',
                          ),
                          const SizedBox(width: 16), // Abstand zum rechten Rand
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 64,
              bottom: 280,
              child: Transform.scale(
                  scale: 0.6,
                  child: Image.asset("assets/graphics/Burger_3D.png")),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFoodItem({
    required String title,
    required String flavor,
    required String imagePath,
    required String price,
  }) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          scrollControlDisabledMaxHeightRatio: 0.885,
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
          ),
          builder: (context) => _buildBottomSheetContent(title, flavor, price),
        );
      },
      child: FoodContainerWidget(
        title: title,
        flavor: flavor,
        imagePath: imagePath,
        price: price,
      ),
    );
  }

  Widget _buildBottomSheetContent(String title, String flavor, String price) {
    return Container(
      height: 805,
      width: 500,
      color: const Color.fromARGB(194, 0, 0, 0),
      padding: const EdgeInsets.all(16.0),
      child: Stack(
        children: [
          Positioned(
            top: 160, // - 160
            right: 40,
            child: Transform.translate(
              offset: const Offset(100, -410),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Transform.scale(
                  scale: 0.9,
                  child: const Image(
                    image: AssetImage(
                      "assets/graphics/cat_cupcakes_3D.png",
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 200,
            left: 55,
            child: Transform.scale(
              scale: 1.3,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white60, width: 1.0),
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                ),
                height: 300,
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Titel
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      flavor,
                      style: const TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    const SizedBox(height: 8),

                    const Text(
                      'Lorem ipsum dolor sit amet consectetur.Dkjnk joh adipis jogw fgvdpkk pkfgenmk dmefpk negfk nefgokn efngrk okjerfgn pkdbfn pegn poekfg cing elit ut aliquip.',
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                    const SizedBox(height: 16),
                    // Preis
                    Text(
                      "₳ $price",
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Divider(
                      indent: 30,
                      endIndent: 30,
                    ),
                    MyRatingBar()
                  ],
                ),
              ),
            ),
          ),
          // Schaltfläche unten, um zur Bestellung hinzuzufügen
          Positioned(
            bottom: 40,
            left: 30,
            right: 30,
            child: Container(
              width: 350,
              height: 44.0,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                gradient: LinearGradient(colors: [Colors.pink, Colors.orange]),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
                child: Text(
                  'Add to order for ₳ $price',
                  style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
