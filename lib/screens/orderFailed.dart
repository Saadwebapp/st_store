import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:st_store/widgets/reusable_container.dart';

class OrderFailed extends StatelessWidget {
  const OrderFailed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  SafeArea(
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
                  Image.asset("assets/images/orderfailed.png",scale: 1.6,),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .03,
                  ),
                  Text("Order Failed!",
                      style: GoogleFonts.dmSans(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .01,
                  ),
                  Text("Your payment occurred an error.",
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
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.error_outline,color: Colors.black,),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .03,
                  ),
                  Text("Do not worry :')",
                      style: GoogleFonts.dmSans(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .01,
                  ),
                  Text("Keep calm sometimes it happens",
                      style: GoogleFonts.dmSans(
                        fontSize: 12,
                        color: Colors.black54,
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .003,
                  ),
                  Text("Please go back and check your payment method.",
                      style: GoogleFonts.dmSans(
                        fontSize: 12,
                        color: Colors.black54,
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .003,
                  ),
                  Text("or contact us",
                      style: GoogleFonts.dmSans(
                        fontSize: 12,
                        color: Colors.black54,
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .07,
                  ),
                  ReusableContainer(txt: "REVIEW PAYMENT METHOD", icon: Icons.arrow_back_outlined,)
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
