import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:st_store/widgets/reusable_container.dart';
import 'package:st_store/widgets/speakers_container.dart';

import '../widgets/customList.dart';

class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .6023,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xffC6AB59),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                  child: Stack(
                    children: [
                      Center(
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * .040,
                            ),
                            Image.asset(
                              "assets/images/userpageProfileImage.png",
                              scale: 1.45,
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * .020,
                            ),
                            Text(
                              "Saad",
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height *
                                  .00510,
                            ),
                            Text(
                              "saadWebApp@gmail.com",
                              style: GoogleFonts.dmSans(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * .030,
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 30, right: 30.0),
                              child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20))),
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                width: 2.5,
                                                  color:
                                                      Color(0xffF3F6F8))),
                                        ),
                                        child: Center(
                                          child: ListTile(
                                            leading: Text(
                                              "ORDER #CS1020",
                                              style: GoogleFonts.dmSans(
                                                fontSize: 12,
                                                color: Colors.black,
                                              ),
                                            ),
                                            trailing: Text(
                                              ". IN PROGRESS",
                                              style: GoogleFonts.dmSans(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.purple,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: MediaQuery.of(context)
                                                .size
                                                .height *
                                            .01,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(  border: Border(
                                            bottom: BorderSide(
                                              width: 2.5,
                                                color:
                                                Color(0xffF3F6F8))),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left:20.0,right: 20),
                                          child: SizedBox(
                                            height: MediaQuery.of(context).size.height * .13,
                                            child: ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              itemCount: details.length,
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                return Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 15.0),
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        // height:
                                                        //     MediaQuery.of(context).size.height * .27,
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            .2,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20),
                                                            color: Color(
                                                                0xffF3F6F8)),
                                                        child: Image.asset(
                                                            details[index]
                                                                ["image"]),
                                                      ),
                                                      SizedBox(
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            .01,
                                                      ),
                                                      Center(
                                                        child: Text(
                                                          details[index]
                                                              ["name"],
                                                          style: GoogleFonts
                                                              .dmSans(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.black,
                                                            fontSize: 15,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: MediaQuery.of(context)
                                            .size
                                            .height *
                                            .01,
                                      ),
                                      Text(
                                        "Your order is on its way!",
                                        style: GoogleFonts
                                            .dmSans(
                                          fontWeight:
                                          FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(
                                        height: MediaQuery.of(context)
                                            .size
                                            .height *
                                            .01,
                                      ),
                                      Text(
                                        "Order will arrive in 3 days!",
                                        style: GoogleFonts
                                            .dmSans(
                                          fontWeight:
                                          FontWeight.bold,
                                          color: Colors.black45,
                                          fontSize: 13,
                                        ),
                                      ),
                                      SizedBox(
                                        height: MediaQuery.of(context)
                                            .size
                                            .height *
                                            .01,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left:80,right: 80,bottom: 1),
                                        child: ReusableContainer(txt: "TRACK"),
                                      ),

                                    ],
                                  )),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .01,
                ),
                Padding(



                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: Container(

                    height: MediaQuery.of(context).size.height * .1,
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 2.5,
                              color:
                              Color(0xffF3F6F8))),

                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, ),
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .055,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("My Account",
                                style: GoogleFonts.dmSans(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                )),
                            Text("Edit your informations",
                                style: GoogleFonts.dmSans(
                                  fontSize: 10,
                                  color: Colors.black26,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .42,
                        ),
                        Image.asset("assets/images/arrowRightBlack.png",scale: 2,),
                      ],
                    ),
                  ),
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }
}
