import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// import '../../../res/assets_res.dart';

class LogoButtonWidget extends StatelessWidget {
  LogoButtonWidget(
      {super.key,
      required this.text,
      required this.image,
      required this.ontap});

  final String text;

  void Function()? ontap;
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 48,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFD8DDE9),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(image),
            Text(
              text,
              style: GoogleFonts.aBeeZee(
                color: const Color(0xFF7A7A7A),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
