import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ReusableTxtField extends StatelessWidget {
  final String hintTxt;
  final bool visibility;
  IconData? pIcon;
  IconData? sIcon;
  ReusableTxtField({super.key, this.pIcon, required this.hintTxt, this.sIcon, required this.visibility});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: visibility,
      decoration: InputDecoration(
          prefixIcon: Icon(
            pIcon,
            color: Colors.black,
          ),
          suffixIcon: Icon(
            sIcon,
            color: Colors.black,
          ),
          hintText: "$hintTxt",
          hintStyle: GoogleFonts.dmSans(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
    );
  }
}
