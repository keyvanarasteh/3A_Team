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
        actions: [
          Icon(
            Icons.notifications,
            color: Colors.black,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black26,
                  ),
                ),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide()),
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
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
    );
  }
}
