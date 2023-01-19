import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:st_store/widgets/reusable_container.dart';
import 'package:st_store/widgets/text_field.dart';

class Signup extends StatefulWidget {
  Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool press = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on_outlined,
                  ),
                  Text(
                    "Perth, Western Australia",
                    style: GoogleFonts.dmSans(
                        // color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .06,
            ),
            Text(
              "Getting Started",
              style: GoogleFonts.dmSans(
                  // color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Text(
              "Create an account to continue",
              style: GoogleFonts.dmSans(
                  color: Colors.black38,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .045,
            ),
            Text(
              "Email",
              style: GoogleFonts.dmSans(
                  color: Colors.black38,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            ReusableTxtField(
              visibility: false,
              hintTxt: "Saadwebapp@gmail.com",
              pIcon: Icons.mail_outline,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            Text(
              "Username",
              style: GoogleFonts.dmSans(
                  color: Colors.black38,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            ReusableTxtField(
              visibility: false,
              hintTxt: "SaadWebApp",
              pIcon: Icons.person_outline,
              sIcon: Icons.check,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            Text(
              "Password",
              style: GoogleFonts.dmSans(
                  color: Colors.black38,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            ReusableTxtField(
              visibility: false,
              hintTxt: ". . . . . . .",
              pIcon: Icons.lock_outline,
              sIcon: Icons.visibility_outlined,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        if (!press) {
                          setState(() {
                            press = true;
                          });
                        } else {
                          setState(() {
                            press = false;
                          });
                        }
                      },
                      icon: press == true
                          ? Icon(
                              Icons.check_box_outlined,
                              size: 20,
                            )
                          : Icon(
                              Icons.check_box_outline_blank_outlined,
                              size: 20,
                            )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "By creating an account, you agree to our",
                        style: GoogleFonts.dmSans(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "Terms & Conditions",
                        style: GoogleFonts.dmSans(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ]),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            ReusableContainer(
                txt: "SIGN UP",
                img: Image.asset(
                  "assets/images/signinImg.png",
                  scale: 1.8,
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: GoogleFonts.dmSans(
                    color: Colors.black45,
                    fontSize: 12,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Sign in",
                    style: GoogleFonts.dmSans(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            Container(
              height: MediaQuery.of(context).size.height * .0009,
              color: Colors.black12,
              width: double.infinity,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            ReusableContainer(
              color: Color(0xff3C79E6),
              icon: Icons.facebook,
              txt: "Connect with Facebook",
            )
          ],
        ),
      )),
    );
  }
}
