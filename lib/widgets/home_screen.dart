import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:st_store/screens/speakers.dart';
import 'package:st_store/widgets/customList.dart';

class Homescreen extends StatelessWidget {
  // List<Map> items = [
  //   {
  //     "image": "assets/images/homePageBeosoundImg.png",
  //     "itemName": "Beosound 1",
  //     "price": 1600,
  //   },
  //   {
  //     "image": "assets/images/homePageBeolitImg.png",
  //     "itemName": "Beolit 17",
  //     "price": 550,
  //   },
  // ];
  Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .025,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Icon(Icons.menu),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
          Center(
              child: Text(
            "Browse by Categories",
            style: GoogleFonts.dmSans(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 15,
            ),
          )),
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: InkWell(
                      onTap: (){
                       Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Speakers()));
              },
                      child: Image.asset(
                        "assets/images/homePageSpeakersImg.png",
                        height: MediaQuery.of(context).size.height * .32,
                      ),
                    ),
                  ),
                  Image.asset(
                    "assets/images/homepageHeadsetsImg.png",
                    height: MediaQuery.of(context).size.height * .32,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .032,
          ),
          Container(
            height: MediaQuery.of(context).size.height * .0009,
            color: Colors.black12.withOpacity(.07),
            width: double.infinity,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .035,
          ),
          Center(
              child: Text(
            "Recommended for You",
            style: GoogleFonts.dmSans(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 15,
            ),
          )),
          SizedBox(
            height: MediaQuery.of(context).size.height * .025,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .28,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: details.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 15.0),
                              child: Container(
                                // height:
                                //     MediaQuery.of(context).size.height * .27,
                                width: MediaQuery.of(context).size.width * .43,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xffF3F6F8)),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .014,
                                    ),
                                    Image.asset(
                                      details[index]["image"],
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .19,
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .01,
                                    ),
                                    Center(
                                      child: Text(
                                        details[index]["name"],
                                        style: GoogleFonts.dmSans(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .01,
                                    ),
                                    Center(
                                      child: Text(
                                        "\$${details[index]["price"].toString()}" ,
                                        style: GoogleFonts.dmSans(
                                          color: Colors.black54,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              )),
          // Text("sasdas")
        ],
      ),
    );
  }
}
