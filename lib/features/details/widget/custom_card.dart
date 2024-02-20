// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:diet_manager/features/details/widget/bounce_animation.dart';
import 'package:diet_manager/features/item/widget/custom_bounceanimation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCard extends StatelessWidget {
  String image;
  String name;
  String date;
  String cal;
  CustomCard({
    Key? key,
    required this.image,
    required this.name,
    required this.date,
    required this.cal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 400,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
      child: Row(
        children: [
          Container(
            height: 70,
            width: 120,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
            child: Hero(
                tag: name,
                child: ScaleFadeBounceAnimation(
                    delay: 1, child: Image.asset(image, fit: BoxFit.cover))),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,
                  style: GoogleFonts.poppins(
                      fontSize: 18, fontWeight: FontWeight.bold)),
              Text(date,
                  style: GoogleFonts.poppins(
                      fontSize: 16, fontWeight: FontWeight.w400))
            ],
          ),
          const Spacer(),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text("$cal cal",
                  style: GoogleFonts.quicksand(
                      fontSize: 20, fontWeight: FontWeight.w300)),
            ),
          ),
        ],
      ),
    );
  }
}
