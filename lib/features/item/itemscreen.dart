// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable, unnecessary_const
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:diet_manager/features/details/model/data_model.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:slider_button/slider_button.dart';

class ItemScreen extends StatefulWidget {
  DataModel model;
  ItemScreen({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB2A186),
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: const Icon(
                    CupertinoIcons.back,
                    size: 30,
                  )),
              IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: const Icon(
                    Iconsax.menu,
                    size: 30,
                  )),
            ],
          ),
          Container(
            height: 250,
            width: 250,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(shape: BoxShape.circle, boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurStyle: BlurStyle.outer,
                  blurRadius: 30,
                  spreadRadius: 5)
            ]),
            child: Hero(
                tag: widget.model.name,
                child: Image.asset(
                  widget.model.image,
                  fit: BoxFit.cover,
                )),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            height: MediaQuery.sizeOf(context).height * 0.5 + 55,
            width: 430,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60)),
                boxShadow: [
                  const BoxShadow(
                      color: Colors.grey,
                      blurRadius: 20,
                      blurStyle: BlurStyle.outer,
                      spreadRadius: 1)
                ]),
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 6,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Time",
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "28 Sep",
                              style: GoogleFonts.poppins(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color(0xFFE5DBC8)),
                          child: Center(
                            child: Text(
                              "2:42",
                              style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color(0xFFE5DBC8)),
                          child: Center(
                            child: Text(
                              "PM",
                              style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Why me eat?",
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Row(
                        children: [
                          Container(
                            height: 250,
                            width: 150,
                            decoration: BoxDecoration(
                                color: const Color(0xFFE5DBC8),
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.transparent
                                            .withOpacity(0.2)),
                                    child: const Center(
                                        child: Text(
                                      "😠",
                                      style: TextStyle(fontSize: 35),
                                    )),
                                  ),
                                  Text("#hungry",
                                      style: GoogleFonts.quicksand(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SliderButton(
                        width: 400,
                        height: 80,
                        backgroundColor: const Color(0xFF4C3528),
                        buttonSize: 60,
                        icon: const Icon(Icons.fastfood_rounded),
                        buttonColor: Colors.white,
                        action: () async {
                          // context.pop();
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Item Added")));
                        },
                        label: Text(
                          "Add Meal   >>>",
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        alignLabel: Alignment.center,
                      ),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
