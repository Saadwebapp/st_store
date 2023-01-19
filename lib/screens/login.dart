import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:st_store/screens/home.dart';
import 'package:st_store/widgets/reusable_container.dart';
import 'package:st_store/widgets/text_field.dart';

import 'signup.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(left: 25.0, right: 25, top: 25),
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
              height: MediaQuery.of(context).size.height * .085,
            ),
            Text(
              "Let's Sign You In",
              style: GoogleFonts.dmSans(
                  // color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            Text(
              "Welcome back you've been missed!",
              style: GoogleFonts.dmSans(
                  color: Colors.black38,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .055,
            ),
            Text(
              "Username or Email",
              style: GoogleFonts.dmSans(
                  color: Colors.black38,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            ReusableTxtField(
              visibility: false,
              hintTxt: "Username",
              pIcon: Icons.person_outline,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            Text(
              "Password",
              style: GoogleFonts.dmSans(
                  color: Colors.black38,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            ReusableTxtField(
              visibility: true,
              hintTxt: ". . . . . . .",
              pIcon: Icons.lock_outline,
              sIcon: Icons.visibility_outlined,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .18,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Home()));
              },
              child: ReusableContainer(
                  txt: "SIGN IN",
                  img: Image.asset(
                    "assets/images/signinImg.png",
                    scale: 1.8,
                  )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an acount? ",
                  style: GoogleFonts.dmSans(
                    color: Colors.black45,
                    fontSize: 14,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Signup()));
                  },
                  child: Text(
                    "Sign up",
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
