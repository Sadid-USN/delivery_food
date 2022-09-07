import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BigText extends StatelessWidget {
  final Color color;
  final String text;
  final double size;
  final TextOverflow overflow;
  const BigText({
    Key? key,
    this.color = const Color(0xff332d2b),
    required this.text,
    this.size = 20.0,
    this.overflow = TextOverflow.ellipsis,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      maxLines: 1,
      style: GoogleFonts.robotoFlex(
        letterSpacing: 1.1,
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
