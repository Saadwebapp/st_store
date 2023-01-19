import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:st_store/screens/orderFailed.dart';
import 'package:st_store/screens/paymentSuccessful.dart';
import 'package:st_store/widgets/reusable_container.dart';

import '../widgets/customList.dart';

class PlaceOrder extends StatefulWidget {
  const PlaceOrder({Key? key}) : super(key: key);

  @override
  State<PlaceOrder> createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: ListTile(
              leading: Image.asset(
                "assets/images/arrowLeftImg.png",
                scale: 1.9,
              ),
              title: Center(
                child: Text("Order Review",
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
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: ListTile(
                leading: Text(
                  "Products",
                  style: GoogleFonts.dmSans(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_drop_down_circle_outlined,
                  color: Colors.black,
                )),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 2.5, color: Color(0xffF3F6F8))),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 30.0,
              ),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .16,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: details.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Column(
                        children: [
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
          SizedBox(
            height: MediaQuery.of(context).size.height * .038,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text("SHIPPING",
                style: GoogleFonts.dmSans(
                  fontSize: 12,
                  color: Colors.black54,
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: ListTile(
              leading: Image.asset(
                "assets/images/arrowLeftImg.png",
                scale: 1.9,
              ),
              title: Text("139 Haystreet,Perth",
                  style: GoogleFonts.dmSans(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
              trailing: Container(
                height: MediaQuery.of(context).size.height * .032,
                width: MediaQuery.of(context).size.width * .15,
                decoration: BoxDecoration(
                  color: Color(0xffC6AB59),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text("Change",
                      style: GoogleFonts.dmSans(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .024,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Container(
              height: MediaQuery.of(context).size.height * .09,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffF3F6F8), width: 1.8),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                    ),
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
                      Text("Shipping",
                          style: GoogleFonts.dmSans(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          )),
                      Text("2-3 days",
                          style: GoogleFonts.dmSans(
                            fontSize: 10,
                            color: Colors.black26,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .43,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10),
                    child: Image.asset(
                      "assets/images/arrowDownimg.png",
                      scale: 1.9,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .034,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text("PAYMENT",
                style: GoogleFonts.dmSans(
                  fontSize: 12,
                  color: Colors.black54,
                )),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .014,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Container(
              height: MediaQuery.of(context).size.height * .06,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                leading: Image.asset(
                  "assets/images/mastercardImg.png",
                  scale: 1.3,
                ),
                title: Text("**** 90000",
                    style: GoogleFonts.dmSans(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )),
                trailing: Container(
                  height: MediaQuery.of(context).size.height * .032,
                  width: MediaQuery.of(context).size.width * .15,
                  decoration: BoxDecoration(
                    color: Color(0xffC6AB59),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text("Change",
                        style: GoogleFonts.dmSans(
                          fontSize: 10,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .04,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 2.5, color: Color(0xffF3F6F8))),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .05,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: ListTile(
              leading: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Shipping",
                      style: GoogleFonts.dmSans(
                        fontSize: 14,
                        color: Colors.black54,
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .009,
                  ),
                  Text("Total",
                      style: GoogleFonts.dmSans(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),

              trailing:  Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("Free",
                      style: GoogleFonts.dmSans(
                        fontSize: 12,
                        color: Colors.black54,
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .009,
                  ),
                  Text("9,800",
                      style: GoogleFonts.dmSans(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),

            child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => OrderFailed()));
                },
                child: ReusableContainer(txt: "PLACE ORDER",)),
          ),
        ],
      ),
    );
  }
}
