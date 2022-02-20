import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quranapp/para/para_list.dart';

import 'main.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100.0,
            ),
            Text(
              "Quran App",
              style: TextStyle(
                fontSize: 39.0,
                fontWeight: FontWeight.bold,
                color: Color(0xff713AC1),
              ),
            ),
            SizedBox(
              height: 13.0,
            ),
            Text(
              "Learn Quran ",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
            ),
            Text(
              "and recite once everyday. ",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                height: 330.0,
                // color: Colors.red,
                child: Stack(
                  children: [
                    Card(
                      elevation: 20.0,
                      shadowColor: Color(0xffB14154),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                      color: Colors.white,
                      child: Container(
                        height: 300.0,
                        width: 250.0,
                        decoration: BoxDecoration(
                            // color: Colors.black,
                            borderRadius: BorderRadius.circular(25.0),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('images/quran_image.jpg'))),
                      ),
                    ),
                    Positioned(
                      bottom: 2.0,
                      left: 50.0,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ParaListPage()));
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(20.0),
                                  right: Radius.circular(20.0))),
                          color: Color(0xffF9B090),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(
                                55.0, 12.0, 55.0, 12.0),
                            child: Text(
                              "Bismillah",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            // SizedBox(height: 2.0,),
            Padding(
              padding: const EdgeInsets.only(bottom: 4.0,left: 20.0),
              child: Card(
                elevation: 20.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(20.0),
                        right: Radius.circular(20.0))),
                color: Color(0xff8C59D0),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                  child: Text(
                    "Developed By Ashhar Ali",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
