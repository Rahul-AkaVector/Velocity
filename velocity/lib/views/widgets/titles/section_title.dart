import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity/constants/assets.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // SizedBox(
        //   height: kToolbarHeight + 12,
        // ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Text(
            title,
            // style: GoogleFonts.poppins(
            //   color: Colors.white,
            //   fontSize: 24,
            //   fontWeight: FontWeight.w500,
            // ),
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontFamily: AssetsFonts.instance.emberBoldFont,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(
          height: 2,
        ),
      ],
    );
  }
}
