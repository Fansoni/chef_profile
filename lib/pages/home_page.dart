import 'package:chef_profile/widgets/build_card_menu.dart';
import 'package:chef_profile/widgets/profile_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> imageList = [
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
    'assets/images/5.jpg',
    'assets/images/6.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              const SizedBox(
                height: 350,
                width: double.infinity,
              ),
              Container(
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/2.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 125,
                left: 15,
                right: 15,
                child: Material(
                  elevation: 3.0,
                  child: SizedBox(
                    height: 200,
                    width: MediaQuery.of(context).size.width - 30,
                  ),
                ),
              ),
              Positioned(
                top: 75,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        const CircleAvatar(
                          radius: 50.0,
                          backgroundImage: AssetImage('assets/images/1.jpg'),
                        ),
                        const Text(
                          'Chris Pratt',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22.0),
                        ),
                        const SizedBox(height: 8.0),
                        const Text(
                          'China',
                          style: TextStyle(color: Colors.grey, fontSize: 20.0),
                        ),
                        const SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            ProfileButton(
                              onPressed: () {},
                              backgroundColor: Colors.redAccent,
                              text: 'Message',
                            ),
                            const SizedBox(width: 10.0),
                            ProfileButton(
                              onPressed: () {},
                              backgroundColor: Colors.grey.withOpacity(0.7),
                              text: 'Following',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Column(
              children: <Widget>[
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Menu',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    Text(
                      'see all',
                      style: TextStyle(color: Colors.grey, fontSize: 16.0),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const BuildCardMenu(
                  image: 'assets/images/2.jpg',
                  name: 'Berry banana milkshake',
                  period: 'Breakfast',
                  favorite: 1.2,
                  rating: 4,
                  views: 2.8,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const BuildCardMenu(
                  image: 'assets/images/3.jpg',
                  name: 'Fruit pancake',
                  period: 'Breakfast',
                  favorite: 2.8,
                  rating: 4,
                  views: 4.2,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Works',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    Text(
                      'see all',
                      style: TextStyle(color: Colors.grey, fontSize: 16.0),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 125,
                  child: ListView.builder(
                    itemCount: imageList.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Container(
                      height: 125,
                      width: 125,
                      margin: const EdgeInsets.only(right: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        image: DecorationImage(
                            image: AssetImage(imageList[index]),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
