// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpressionContainer extends StatefulWidget {
  String exp;
  String text;
  bool selectedMode;
  ExpressionContainer({
    Key? key,
    required this.exp,
    required this.text,
    required this.selectedMode,
  }) : super(key: key);

  @override
  State<ExpressionContainer> createState() => _ExpressionContainerState();
}

class _ExpressionContainerState extends State<ExpressionContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 130,
      decoration: BoxDecoration(
          color: widget.selectedMode
              ? Color(0xFFE5DBC8).withOpacity(0.5)
              : Color(0xFFE5DBC8),
          borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent.withOpacity(0.2)),
              child: Center(
                  child: Text(
                widget.exp,
                style: const TextStyle(fontSize: 35),
              )),
            ),
            Text(widget.text,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.quicksand(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w400))
          ],
        ),
      ),
    );
  }
}
