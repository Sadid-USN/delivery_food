import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallText extends StatelessWidget {
  final Color color;
  final String text;
  final double size;
  final double heigth;

  const SmallText({
    Key? key,
    this.color = const Color(0xffccc7c5),
    required this.text,
    this.size = 14.0,
    this.heigth = 1.2,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.robotoFlex(
        color: color,
        fontSize: size,
        height: heigth,
      ),
    );
  }
}
