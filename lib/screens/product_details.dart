import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:st_store/screens/add_to_cart.dart';
import 'package:st_store/widgets/reusable_container.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xffF3F6F8),
body: SafeArea(
  child:   Stack(
    children: [
  
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(left:10.0,right: 10),
              child: Image.asset("assets/images/arrowLeftImg.png",scale: 1.9,),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(left:10.0,right: 10),
              child: Image.asset("assets/images/speakerDetailsShoppingCartImg.png",scale: 1.9,),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .053,
          ),
        Padding(
          padding: const EdgeInsets.only(left:25.0,),
          child: Text(
          "Speakers",
          style: GoogleFonts.dmSans(
          fontSize: 16,
          color: Colors.black54

          )),
        ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .0051,
          ),
        Padding(
          padding: const EdgeInsets.only(left:25.0,),

          child: Text(
          "Beosound",
          style: GoogleFonts.dmSans(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 28,
          ),
          ),
        ),

          Padding(
            padding: const EdgeInsets.only(left:25.0,),

            child: Text(
              "Balance",
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .051,
          ),
          Padding(
            padding: const EdgeInsets.only(left:25.0,),

            child: Text(
              "From",
              style: GoogleFonts.dmSans(
                fontSize: 16,
                color: Colors.black54,
              ),

            ),

          ),
          Padding(
            padding: const EdgeInsets.only(left:25.0,),

            child: Text(
              "\$1,600",
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .041,
          ),
          Padding(
            padding: const EdgeInsets.only(left:25.0,),

            child: Text(
              "Available Colors",
              style: GoogleFonts.dmSans(
                fontSize: 16,
                color: Colors.black54,
              ),

            ),

          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .011,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:25.0,),
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: Color(0xffC6AB59),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Center(
                    child: Icon(Icons.check,color: Colors.black,size: 15,),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left:10.0,),
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: Color(0xffF8B6C3),
                      borderRadius: BorderRadius.circular(5)
                  ),

                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left:10.0,),
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)
                  ),

                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .051,
          ),

          Container(
           width: double.infinity,
            height: MediaQuery.of(context).size.height * .395,
            decoration: BoxDecoration(
                color: Colors.white,
            borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10))
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .131,
                ),
                Padding(
                  padding: const EdgeInsets.only(left:25.0,),

                  child: Text(
                    "Wireless, smart home speaker",
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .01,
                ),
                Padding(
                  padding: const EdgeInsets.only(left:25.0,right: 30),

                  child: Text(
                    "A wireless speaker with a dynamic acoustic performance designed to be positioned up against the wall on a shelf or side table in your home. Impressive sound to its size.",
                    style: GoogleFonts.dmSans(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .07,
                ),
                Padding(
                  padding: const EdgeInsets.only(left:25.0,right: 25),
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => AddToCart()));
                      },
                      child: ReusableContainer(txt: "Add To Cart")),
                )
              ],
            ),
          ),

        ],
      ),
      Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Container(
                height: MediaQuery.of(context).size.height * .380,
                width: MediaQuery.of(context).size.width* .470,
                child: Image.asset("assets/images/speakerDetailsBeosoundBalanceImg.png",)),
          )),
    ],
  ),
),
    );
  }
}
