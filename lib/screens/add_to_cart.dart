import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:st_store/screens/placeOrder.dart';
import 'package:st_store/widgets/reusable_container.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({Key? key}) : super(key: key);

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Image.asset(
                  "assets/images/arrowLeftImg.png",
                  scale: 1.9,
                ),
              ),
              title: Center(
                child: Text("MY CART",
                    style: GoogleFonts.dmSans(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Icon(
                  Icons.more_horiz_outlined,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .024,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30),
              child: Container(
                height: MediaQuery.of(context).size.height * .16,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffF3F6F8),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/addToCartBeosoundImg.png",
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Beosound 1",
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .005,
                          ),
                          Row(
                            children: [
                              Text(
                                "color",
                                style: GoogleFonts.dmSans(
                                  color: Colors.black54,
                                  fontSize: 13,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(3)),
                                  width: MediaQuery.of(context).size.width * .033,
                                  height:
                                      MediaQuery.of(context).size.height * .01417,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Text(
                                  "Size",
                                  style: GoogleFonts.dmSans(
                                    color: Colors.black54,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(2)),
                                  width: MediaQuery.of(context).size.width * .04,
                                  height:
                                      MediaQuery.of(context).size.height * .01517,
                                  child: Center(
                                    child: Text(
                                      "S",
                                      style: GoogleFonts.dmSans(
                                        color: Colors.black54,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .015,
                          ),
                          Text(
                            "\$1600",
                            style: GoogleFonts.dmSans(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .015,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.remove,
                                color: Color(0xff8F92A1),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5.0, right: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(2)),
                                  width: MediaQuery.of(context).size.width * .06,
                                  height:
                                      MediaQuery.of(context).size.height * .02517,
                                  child: Center(
                                    child: Text(
                                      "4",
                                      style: GoogleFonts.dmSans(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.add,
                                color: Color(0xff8F92A1),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30),
              child: Container(
                height: MediaQuery.of(context).size.height * .09,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffF3F6F8), width: 1.8),
                  borderRadius: BorderRadius.circular(30),
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
              height: MediaQuery.of(context).size.height * .014,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30),
              child: Container(
                height: MediaQuery.of(context).size.height * .09,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffF3F6F8), width: 1.8),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                      ),
                      child: Icon(
                        Icons.percent,
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
                        Text("Promo Code",
                            style: GoogleFonts.dmSans(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                        Text("-\$10000",
                            style: GoogleFonts.dmSans(
                              fontSize: 10,
                              color: Colors.black26,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .183,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .032,
                      width: MediaQuery.of(context).size.width * .15,
                      decoration: BoxDecoration(
                        color: Color(0xffC6AB59),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("ST#132",
                            style: GoogleFonts.dmSans(
                              fontSize: 10,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .0183,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10),
                        child: Icon(
                          Icons.check,
                          color: Colors.green,
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .18,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Color(0xffF3F6F8), width: 1.5))),
              child: ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                  ),
                  child: Text("Total",
                      style: GoogleFonts.dmSans(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                trailing: Padding(
                  padding: const EdgeInsets.only(
                    right: 20.0,
                  ),
                  child: Text("\$ 90,800",
                      style: GoogleFonts.dmSans(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30),
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => PlaceOrder()));
                  },
                  child: ReusableContainer(
                    txt: "CHECKOUT",
                    img: Image.asset(
                      "assets/images/arrowRightWhiteImg.png",
                      scale: 1.3,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
