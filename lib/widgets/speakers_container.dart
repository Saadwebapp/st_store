import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class SpeakerContainer extends StatelessWidget {

  final String name;
  final String rattings;
  final String price;
  final String? img;
  Image?  sideImg;
  SpeakerContainer(
      {super.key,
      required this.name,
      required this.rattings,
      required this.price,
      required this.img,
      this.sideImg});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, bottom: 10),
      child: Stack(children: [
        Container(
          // height: MediaQuery.of(context).size.height * .14,
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
                  Image.asset("assets/images/$img.png"),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
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
                            rattings,
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
                        "\$$price",
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
        SizedBox(
          height: MediaQuery.of(context).size.height * .125,
        ),
        Align(
            alignment: Alignment.centerRight,
            child: sideImg),
      ]),
    );
  }
}
