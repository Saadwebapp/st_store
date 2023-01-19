import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:st_store/screens/login.dart';
import 'package:st_store/widgets/reusable_container.dart';

class WelcomeToSTStore extends StatelessWidget {
  const WelcomeToSTStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/firstPageimage.png",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Container(
                      height: 5,
                      width: 9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff8F92A1).withOpacity(.3)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Container(
                      height: 5,
                      width: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffC6AB59)),
                    ),
                  ),
                  Container(
                    height: 5,
                    width: 9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff8F92A1).withOpacity(.3)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        "Welcome to STStore!",
                        style: GoogleFonts.dmSans(
                            color: Color(0xff171717),
                            fontSize: 24,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        "With long experience in the audio industry,",
                        style: GoogleFonts.dmSans(
                            color: Color(0xff171717).withOpacity(.7),
                            fontSize: 14,
                            fontWeight: FontWeight.w100),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40.0),
                      child: Text(
                        "we create the best quality products",
                        style: GoogleFonts.dmSans(
                            color: Color(0xff171717).withOpacity(.7),
                            fontSize: 14,
                            fontWeight: FontWeight.w100),
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Login()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          child: ReusableContainer(
                              txt: "GET STARTED",
                              img: Image.asset(
                                "assets/images/arrowRightImg.png",
                                scale: 1.5,
                              )),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
