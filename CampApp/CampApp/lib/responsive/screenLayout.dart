// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../widget/camp_list.dart';
import '../widget/sport_type.dart';

enum Camp { cadir, karavan, bungalov }

class screenLayout extends StatefulWidget {
  @override
  State<screenLayout> createState() => _screenLayoutState();
}

bool? facilities = true;
Camp? typeOf = Camp.cadir;
double slide = 0;

class _screenLayoutState extends State<screenLayout> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 754) {
          return SafeArea(
            child: Scaffold(
              //appBar
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                leading: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                title: Text(
                  'Hello, İstinye!',
                  style: TextStyle(color: Colors.black),
                ),
                // ignore: prefer_const_literals_to_create_immutables
                actions: [
                  Icon(
                    Icons.notifications,
                    color: Colors.black,
                  ),
                ],
              ),
              //body
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  child: CustomScrollView(
                    slivers: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        //Search area
                        TextField(
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black26,
                              ),
                            ),
                            enabledBorder:
                                OutlineInputBorder(borderSide: BorderSide()),
                            hintText: "Search",
                            hintStyle: TextStyle(
                              color: Colors.black38,
                            ),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black38,
                            ),
                          ),
                        ),
                        //sports name
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    sport_type(sportname: "All"),
                                    sport_type(sportname: "Camping"),
                                    sport_type(sportname: "Hiking"),
                                    sport_type(sportname: "Kano"),
                                    sport_type(sportname: "Photo"),
                                    sport_type(sportname: "Camping"),
                                    sport_type(sportname: "Hiking"),
                                    sport_type(sportname: "Kano"),
                                    sport_type(sportname: "Photo"),
                                  ],
                                ))),
                        SizedBox(
                          height: 20,
                        ),
                        //camp list area
                        Container(
                          width: double.infinity,
                          height: 250,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed("/CampArea");
                                },
                                child: camp_list(
                                    campimage: "assets/images/Camp.jpg",
                                    camparealocation: "Curt Goway State Park",
                                    campareaname: "National Park",
                                    campstar: "4.8"),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed("/CampArea");
                                },
                                child: camp_list(
                                    campimage: "assets/images/Camp.jpg",
                                    camparealocation: "Curt Goway State Park",
                                    campareaname: "National Park",
                                    campstar: "4.8"),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed("/CampArea");
                                },
                                child: camp_list(
                                    campimage: "assets/images/Camp.jpg",
                                    camparealocation: "Curt Goway State Park",
                                    campareaname: "National Park",
                                    campstar: "4.8"),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed("/CampArea");
                                },
                                child: camp_list(
                                    campimage: "assets/images/Camp.jpg",
                                    camparealocation: "Curt Goway State Park",
                                    campareaname: "National Park",
                                    campstar: "4.8"),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        // Popular Routes
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Popular Routes",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(20)),
                            height: 150,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 134,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/Camp.jpg"),
                                                fit: BoxFit.cover)),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Text("Yoho National Park",
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  Icon(Icons.favorite_border)
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text("British Columbia",
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.bold))
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.location_on_outlined),
                                          Text("Field--------------",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold)),
                                          Icon(Icons.location_on_outlined),
                                          Text("Yoho",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold))
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("Joined traveller:",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold)),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Stack(
                                            children: [
                                              Container(
                                                child: CircleAvatar(
                                                  child: Icon(Icons.person),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 18.0),
                                                child: Container(
                                                  child: CircleAvatar(
                                                    child: Icon(Icons.person),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 36.0),
                                                child: Container(
                                                  child: CircleAvatar(
                                                    child: Icon(Icons.person),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ])),
              ),
              //Bottom Navigation
              bottomNavigationBar: BottomNavigationBar(
                // ignore: prefer_const_literals_to_create_immutables
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home_filled,
                      color: Colors.blue,
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.navigation_sharp,
                      color: Colors.blue,
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.airplane_ticket,
                      color: Colors.blue,
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person_outline_sharp,
                      color: Colors.blue,
                    ),
                    label: '',
                  ),
                ],
              ),
            ),
          );
          //tablet
        } else if (constraints.maxWidth < 1024) {
          return SafeArea(
              child: Scaffold(
                //appBar
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                leading: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                title: Text(
                  'Hello, İstinye!',
                  style: TextStyle(color: Colors.black),
                ),
                // ignore: prefer_const_literals_to_create_immutables
                actions: [
                  Icon(
                    Icons.notifications,
                    color: Colors.black,
                  ),
                ],
              ),
            body: Container(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        child: CustomScrollView(
                          slivers: [
                    SliverFillRemaining(
                      hasScrollBody: false,
                      child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              //Search area
                              TextField(
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black26,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide()),
                                  hintText: "Search",
                                  hintStyle: TextStyle(
                                    color: Colors.black38,
                                  ),
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Colors.black38,
                                  ),
                                ),
                              ),
                              //sports name
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                  child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: [
                                          sport_type(sportname: "All"),
                                          sport_type(sportname: "Camping"),
                                          sport_type(sportname: "Hiking"),
                                          sport_type(sportname: "Kano"),
                                          sport_type(sportname: "Photo"),
                                          sport_type(sportname: "Camping"),
                                          sport_type(sportname: "Hiking"),
                                          sport_type(sportname: "Kano"),
                                          sport_type(sportname: "Photo"),
                                        ],
                                      ))),
                              SizedBox(
                                height: 20,
                              ),
                              //camp list area
                              Container(
                                width: double.infinity,
                                height: 250,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    camp_list(
                                        campimage: "assets/images/Camp.jpg",
                                        camparealocation: "Curt Goway State Park",
                                        campareaname: "National Park",
                                        campstar: "4.8"),
                                    camp_list(
                                        campimage: "assets/images/Camp.jpg",
                                        camparealocation: "Curt Goway State Park",
                                        campareaname: "National Park",
                                        campstar: "4.8"),
                                    camp_list(
                                        campimage: "assets/images/Camp.jpg",
                                        camparealocation: "Curt Goway State Park",
                                        campareaname: "National Park",
                                        campstar: "4.8"),
                                    camp_list(
                                        campimage: "assets/images/Camp.jpg",
                                        camparealocation: "Curt Goway State Park",
                                        campareaname: "National Park",
                                        campstar: "4.8"),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              // Popular Routes
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Popular Routes",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(20)),
                                  height: 150,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                              width: 100,
                                              height: 134,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/images/Camp.jpg"),
                                                      fit: BoxFit.cover)),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Text("Yoho National Park",
                                                            style: TextStyle(
                                                                fontSize: 17,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold)),
                                                        Icon(
                                                            Icons.favorite_border)
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text("British Columbia",
                                                            style: TextStyle(
                                                                fontSize: 17,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold))
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Icon(Icons.location_on_outlined),
                                                Text("Field--------------",
                                                    style: TextStyle(
                                                        fontSize: 17,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Icon(Icons.location_on_outlined),
                                                Text("Yoho",
                                                    style: TextStyle(
                                                        fontSize: 17,
                                                        fontWeight:
                                                            FontWeight.bold))
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text("Joined traveller:",
                                                    style: TextStyle(
                                                        fontSize: 17,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Stack(
                                                  children: [
                                                    Container(
                                                      child: CircleAvatar(
                                                        child: Icon(Icons.person),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 18.0),
                                                      child: Container(
                                                        child: CircleAvatar(
                                                          child:
                                                              Icon(Icons.person),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 36.0),
                                                      child: Container(
                                                        child: CircleAvatar(
                                                          child:
                                                              Icon(Icons.person),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                ])),
                    ),
                  ),
                  Expanded(
                      child: CustomScrollView(slivers: [
                    SliverFillRemaining(
                      hasScrollBody: false,
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/campArea.jpeg"),
                              fit: BoxFit.cover),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 40),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Location',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    Container(
                                      width: 35,
                                      height: 35,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.white38),
                                      child: const Icon(
                                        Icons.favorite_border,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 400),
                              Container(
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(215, 66, 66, 66),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            'Camping Field',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                            ),
                                          ),
                                          Row(
                                            children: const [
                                              Text(
                                                '4.8',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: 15,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            'Location',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.people_alt,
                                                color: Colors.white,
                                                size: 18,
                                              ),
                                              Text(
                                                '93 Reviews',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 18,
                                      ),
                                      Row(
                                        children: const [
                                          Expanded(
                                            flex: 1,
                                            child: Text(
                                              'This campsite is located in the mountains near a river. Enjoy the scenery of this...',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      InkWell(
                                        onTap: () {Navigator.of(context).pushNamed("/Features");},
                                        child: Container(
                                          width: double.infinity,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(14),
                                          ),
                                          child: const Center(
                                            child: Text(
                                              'Features',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ])),
                ],
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                color: Colors.blue,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.navigation_sharp,
                color: Colors.blue,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.airplane_ticket,
                color: Colors.blue,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline_sharp,
                color: Colors.blue,
              ),
              label: '',
            ),
          ],
        ),
          ));
        }
        //Desktop
        else {
          return SafeArea(
              child: Scaffold(
                //appBar
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                leading: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                title: Text(
                  'Hello, İstinye!',
                  style: TextStyle(color: Colors.black),
                ),
                // ignore: prefer_const_literals_to_create_immutables
                actions: [
                  Icon(
                    Icons.notifications,
                    color: Colors.black,
                  ),
                ],
              ),
            body: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      child: CustomScrollView(
                        slivers: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            //Search area
                            TextField(
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black26,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide()),
                                hintText: "Search",
                                hintStyle: TextStyle(
                                  color: Colors.black38,
                                ),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.black38,
                                ),
                              ),
                            ),
                            //sports name
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                                child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        sport_type(sportname: "All"),
                                        sport_type(sportname: "Camping"),
                                        sport_type(sportname: "Hiking"),
                                        sport_type(sportname: "Kano"),
                                        sport_type(sportname: "Photo"),
                                        sport_type(sportname: "Camping"),
                                        sport_type(sportname: "Hiking"),
                                        sport_type(sportname: "Kano"),
                                        sport_type(sportname: "Photo"),
                                      ],
                                    ))),
                            SizedBox(
                              height: 20,
                            ),
                            //camp list area
                            Container(
                              width: double.infinity,
                              height: 250,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  camp_list(
                                      campimage: "assets/images/Camp.jpg",
                                      camparealocation: "Curt Goway State Park",
                                      campareaname: "National Park",
                                      campstar: "4.8"),
                                  camp_list(
                                      campimage: "assets/images/Camp.jpg",
                                      camparealocation: "Curt Goway State Park",
                                      campareaname: "National Park",
                                      campstar: "4.8"),
                                  camp_list(
                                      campimage: "assets/images/Camp.jpg",
                                      camparealocation: "Curt Goway State Park",
                                      campareaname: "National Park",
                                      campstar: "4.8"),
                                  camp_list(
                                      campimage: "assets/images/Camp.jpg",
                                      camparealocation: "Curt Goway State Park",
                                      campareaname: "National Park",
                                      campstar: "4.8"),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            // Popular Routes
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Popular Routes",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(20)),
                                height: 150,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            width: 100,
                                            height: 134,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "assets/images/Camp.jpg"),
                                                    fit: BoxFit.cover)),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text("Yoho National Park",
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      Icon(
                                                          Icons.favorite_border)
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text("British Columbia",
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold))
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(Icons.location_on_outlined),
                                              Text("Field--------------",
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Icon(Icons.location_on_outlined),
                                              Text("Yoho",
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.bold))
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text("Joined traveller:",
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Stack(
                                                children: [
                                                  Container(
                                                    child: CircleAvatar(
                                                      child: Icon(Icons.person),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 18.0),
                                                    child: Container(
                                                      child: CircleAvatar(
                                                        child:
                                                            Icon(Icons.person),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 36.0),
                                                    child: Container(
                                                      child: CircleAvatar(
                                                        child:
                                                            Icon(Icons.person),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
              ])),
                  ),
                ),
                Expanded(
                    child: CustomScrollView(slivers: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/campArea.jpeg"),
                            fit: BoxFit.cover),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Location',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white38),
                                    child: const Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 400),
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(215, 66, 66, 66),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Camping Field',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                          ),
                                        ),
                                        Row(
                                          children: const [
                                            Text(
                                              '4.8',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                              size: 15,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Location',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        ),
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.people_alt,
                                              color: Colors.white,
                                              size: 18,
                                            ),
                                            Text(
                                              '93 Reviews',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 18,
                                    ),
                                    Row(
                                      children: const [
                                        Expanded(
                                          flex: 1,
                                          child: Text(
                                            'This campsite is located in the mountains near a river. Enjoy the scenery of this...',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        width: double.infinity,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius:
                                              BorderRadius.circular(14),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'Features',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ])),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Facilities',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: facilities,
                                  onChanged: (isSelected) {
                                    facilities = isSelected;
                                  },
                                ),
                                Text(
                                  'Tuvalet',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: facilities,
                                  onChanged: (isSelected) {
                                    facilities = isSelected;
                                  },
                                ),
                                Text(
                                  'Duş',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: facilities,
                                  onChanged: (isSelected) {
                                    facilities = isSelected;
                                  },
                                ),
                                Text(
                                  'Elektrik',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: facilities,
                                  onChanged: (isSelected) {
                                    facilities = isSelected;
                                  },
                                ),
                                Text(
                                  'Ateş Yakmaya Uygun Alan',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: facilities,
                                  onChanged: (isSelected) {
                                    facilities = isSelected;
                                  },
                                ),
                                Text(
                                  'Otopark',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: facilities,
                                  onChanged: (isSelected) {
                                    facilities = isSelected;
                                  },
                                ),
                                Text(
                                  'Olta Balıkçılığı',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: facilities,
                                  onChanged: (isSelected) {
                                    facilities = isSelected;
                                  },
                                ),
                                Text(
                                  'Yürüyüş Alanları',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: facilities,
                                  onChanged: (isSelected) {
                                    facilities = isSelected;
                                  },
                                ),
                                Text(
                                  'Atv Turları',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: facilities,
                                  onChanged: (isSelected) {
                                    facilities = isSelected;
                                  },
                                ),
                                Text(
                                  'Restoran',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: facilities,
                                  onChanged: (isSelected) {
                                    facilities = isSelected;
                                  },
                                ),
                                Text(
                                  'Yüzülebilir Alan',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: facilities,
                                  onChanged: (isSelected) {
                                    facilities = isSelected;
                                  },
                                ),
                                Text(
                                  'Otopark',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Reservation',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: double.infinity,
                              height: 2,
                              color: Colors.blue,
                            ),
                            const SizedBox(
                              height: 18,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Type of Camp',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Çadır',
                                  style: TextStyle(fontSize: 16),
                                ),
                                Radio<Camp>(
                                  value: Camp.cadir,
                                  groupValue: typeOf,
                                  onChanged: (isSelected) {
                                    typeOf = isSelected;
                                    setState(() {});
                                  },
                                ),
                                Text(
                                  'Karavan',
                                  style: TextStyle(fontSize: 16),
                                ),
                                Radio<Camp>(
                                  value: Camp.karavan,
                                  groupValue: typeOf,
                                  onChanged: (isSelected) {
                                    typeOf = isSelected;
                                    setState(() {});
                                  },
                                ),
                                Text(
                                  'Bungalov',
                                  style: TextStyle(fontSize: 16),
                                ),
                                Radio<Camp>(
                                  value: Camp.bungalov,
                                  groupValue: typeOf,
                                  onChanged: (isSelected) {
                                    typeOf = isSelected;
                                    setState(() {});
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Number of People',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Slider(
                              value: slide,
                              onChanged: (value) {
                                slide = value;
                                setState(() {});
                              },
                              divisions: 10,
                              label: slide.round().toString() + ' Kişi',
                              max: 10,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(),
                                onPressed: () {},
                                child: Text(
                                  'Reservation Now',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                color: Colors.blue,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.navigation_sharp,
                color: Colors.blue,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.airplane_ticket,
                color: Colors.blue,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline_sharp,
                color: Colors.blue,
              ),
              label: '',
            ),
          ],
        ),
          ));
        }
      },
    );
  }
}
