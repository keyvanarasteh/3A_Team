// ignore_for_file: unnecessary_import, camel_case_types, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class camp_list extends StatelessWidget {
  const camp_list({
    Key? key,
    required this.campimage,
    required this.camparealocation,
    required this.campareaname,
    required this.campstar,
  }) : super(key: key);

  final String campimage;
  final String campareaname;
  final String campstar;
  final String camparealocation;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9.0, vertical: 10),
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.grey[400],
            borderRadius: BorderRadius.circular(20),
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              BoxShadow(
                blurRadius: 1,
                color: Colors.black,
                spreadRadius: 1,
              )
            ],
          ),
          // ignore: prefer_const_literals_to_create_immutables
          // camp image
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(campimage), fit: BoxFit.cover)),
            ),
            // camp area name
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(campareaname,
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold)),
                      Row(
                        children: [
                          Text(campstar,
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold)),
                          Icon(Icons.star ,color: Colors.yellowAccent,)
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        camparealocation,
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            )
          ]),
        ));
  }
}
