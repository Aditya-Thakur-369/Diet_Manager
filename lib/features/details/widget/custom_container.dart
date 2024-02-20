// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomContainer extends StatefulWidget {
  String value;
  Color color;
  double height;
  String hastag;
  CustomContainer({
    Key? key,
    required this.color,
    required this.value,
    required this.height,
    required this.hastag,
  }) : super(key: key);

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {


  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 220,
      width: 150,
      duration: const Duration(milliseconds: 1000),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          Text(
            "${widget.value}%",
            style: GoogleFonts.abel(fontSize: 44),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: widget.color,
            ),
            height: widget.height,
            width: 150,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              widget.hastag,
              style: GoogleFonts.abel(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
