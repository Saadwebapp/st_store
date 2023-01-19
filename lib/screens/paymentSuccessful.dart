import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:st_store/screens/user.dart';
import 'package:st_store/widgets/reusable_container.dart';

import '../widgets/customList.dart';

class PaymentSuccessful extends StatefulWidget {
  const PaymentSuccessful({Key? key}) : super(key: key);

  @override
  State<PaymentSuccessful> createState() => _PaymentSuccessfulState();
}

class _PaymentSuccessfulState extends State<PaymentSuccessful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(

              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: ListTile(
                leading: Image.asset(
                  "assets/images/arrowLeftImg.png",
                  scale: 1.9,
                ),
                title: Center(
                  child: Text("ORDER COMPLETE",
                      style: GoogleFonts.dmSans(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                trailing: Icon(
                  Icons.more_horiz_outlined,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .14,
            ),
            ListTile(
              title: Column(
                children: [
                  Image.asset("assets/images/orderSuccessful.png",scale: 1.6,),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .03,
                  ),
                  Text("Payment Successful!",
                      style: GoogleFonts.dmSans(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .01,
                  ),
                  Text("Orders will arrive in 3 days!",
                      style: GoogleFonts.dmSans(
                        fontSize: 12,
                        color: Colors.black54,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(width: 2.5, color: Color(0xffF3F6F8))),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 30.0,
                ),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * .17,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: details.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .045,

                            ),
                            Container(
                              // height:
                              //     MediaQuery.of(context).size.height * .27,
                              width: MediaQuery.of(context).size.width * .2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffF3F6F8)),
                              child: Image.asset(details[index]["image"]),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .01,
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
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20,bottom: 40),
        child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => User()));
            },
            child: ReusableContainer(txt: "SEE ORDER DETAILS",img: Image.asset("assets/images/arrowRightWhiteImg.png"),)),
      ),
    );
  }
}
