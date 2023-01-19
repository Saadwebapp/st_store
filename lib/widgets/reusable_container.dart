import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ReusableContainer extends StatelessWidget {
  Color? color;
  double height;
  final String txt;
  Image? img;
  IconData? icon;
  ReusableContainer(
      {super.key,
        this.height = .06,
      this.color = const Color(0xffC6AB59),
      this.icon,
      required this.txt,
      this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * height,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
      child: ListTile(
        leading: icon == null
            ? SizedBox()
            : Icon(
                icon,
                color: Colors.white,
              ),
        trailing: img == null ? SizedBox() : img,
        title: Center(
          child: Text(
            "$txt",
            style: GoogleFonts.dmSans(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w100),
          ),
        ),
      ),
    );
  }
}
