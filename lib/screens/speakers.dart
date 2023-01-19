import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:st_store/screens/add_to_cart.dart';
import 'package:st_store/screens/product_details.dart';
import 'package:st_store/widgets/customList.dart';
import 'package:st_store/widgets/speakers_container.dart';

class Speakers extends StatefulWidget {
  const Speakers({super.key});

  @override
  State<Speakers> createState() => _SpeakersState();
}

class _SpeakersState extends State<Speakers> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            title: Center(
              child: Text(
                "SPEAKERS",
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ),
            elevation: 0,
            backgroundColor: Colors.white,
            leading: Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Image.asset(
                "assets/images/arrowLeftImg.png",
                scale: 2,
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Image.asset(
                  "assets/images/FilterImg.png",
                  scale: 2,
                ),
              )
            ]),
        body: Padding(
          padding: const EdgeInsets.only(right: 20.0, left: 20),
          child: Column(children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ProductDetails()));
              },
              child: Image.asset(
                "assets/images/SpeakerPageFirstImg.png",
                scale: 2,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .063,
              child: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                bottom: TabBar(
                    isScrollable: true,
                    labelPadding: EdgeInsets.only(left: 25),
                    indicatorColor: Colors.black,
                    tabs: [
                      Tab(
                          child: Text(
                        "View all",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      )),
                      Tab(
                          child: Text(
                        "Portable",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      )),
                      Tab(
                          child: Text(
                        "Multiroom",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      )),
                      Tab(
                          child: Text(
                        "Architectural",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      )),
                    ]),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .025,
            ),
            SizedBox(
              height: 300,
              child: ListView.builder(
                  itemCount: details.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                        padding: EdgeInsets.only( bottom: 10),
                        child: InkWell(
                          onTap: (){
                            if( !details[index]["details"]){
                              description.add(details[index]);
                              setState(() {
                                details[index]["details"] = true;
                              });
                            }else{
                              description.remove(details[index]);
                              setState(() {
                                details[index]["details"] = false;
                              });
                            };


                            setState(() {

                            });
                        Navigator.push(context,   MaterialPageRoute(
                            builder: (BuildContext context) => AddToCart()));
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * .14,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xffF3F6F8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Stack(children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(details[index]["image"]),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          details[index]["name"],
                                          style: GoogleFonts.dmSans(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontSize: 14,
                                          ),
                                        ),
                                        SizedBox(
                                          height: MediaQuery.of(context).size.height * .005,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "4.5",
                                              style: GoogleFonts.dmSans(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 11,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 10.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Color(0xffC6AB59),
                                                    borderRadius: BorderRadius.circular(2)),
                                                width: MediaQuery.of(context).size.width * .015,
                                                height:
                                                MediaQuery.of(context).size.height * .00717,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 5.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Color(0xffC6AB59),
                                                    borderRadius: BorderRadius.circular(2)),
                                                width: MediaQuery.of(context).size.width * .015,
                                                height:
                                                MediaQuery.of(context).size.height * .00717,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 5.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Color(0xffC6AB59),
                                                    borderRadius: BorderRadius.circular(2)),
                                                width: MediaQuery.of(context).size.width * .015,
                                                height:
                                                MediaQuery.of(context).size.height * .00717,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 5.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Color(0xffC6AB59),
                                                    borderRadius: BorderRadius.circular(2)),
                                                width: MediaQuery.of(context).size.width * .015,
                                                height:
                                                MediaQuery.of(context).size.height * .00717,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 5.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Color(0xff8F92A1).withOpacity(.3),
                                                    borderRadius: BorderRadius.circular(2)),
                                                width: MediaQuery.of(context).size.width * .015,
                                                height:
                                                MediaQuery.of(context).size.height * .00717,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: MediaQuery.of(context).size.height * .015,
                                        ),
                                        Text(
                                          "\$${details[index]["price"].toString()}",
                                          style: GoogleFonts.dmSans(
                                            color: Colors.black,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ]),
                            ),
                          ),
                        ));

                  }),
            ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * .025,
            // ),
            // SpeakerContainer(
            //     name: "Beoplay A9",
            //     rattings: "4.5",
            //     price: "1600",
            //     img: 'speakerPageBeoplayImg',
            //     sideImg: Image.asset(
            //       "assets/images/beoplayNotificationImg.png",
            //       scale: 2.2,
            //     )),
          ]),
        ),
      ),
    );
  }
}
