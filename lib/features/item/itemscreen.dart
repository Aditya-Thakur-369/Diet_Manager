// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable, unnecessary_const
import 'package:diet_manager/features/item/widget/custom_bounceanimation.dart';
import 'package:diet_manager/features/item/widget/expression_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:diet_manager/features/details/model/data_model.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
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
  Mode selecetedMode = Mode.hungry;

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
          ScaleFadeBounceAnimation(
            delay: 2,
            child: Container(
              height: 250,
              width: 250,
              clipBehavior: Clip.antiAlias,
              decoration:
                  const BoxDecoration(shape: BoxShape.circle, boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    blurStyle: BlurStyle.outer,
                    blurRadius: 30,
                    spreadRadius: 5)
              ]),
              child:
                  // Hero(
                  //     tag: widget.model.name,
                  Image.asset(
                widget.model.image,
                fit: BoxFit.cover,
                // )
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            height: MediaQuery.sizeOf(context).height * 0.5 + 55,
            width: 430,
            decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60)),
                boxShadow: const [
                  BoxShadow(
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
                              ),
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
                      padding: const EdgeInsets.only(left: 6, right: 6),
                      child: Row(
                        children: [
                          ScaleFadeBounceAnimation(
                            delay: 1,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selecetedMode = Mode.hungry;
                                });
                              },
                              child: ExpressionContainer(
                                  selectedMode: selecetedMode == Mode.hungry,
                                  exp: "😠",
                                  text: "#hungry"),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          ScaleFadeBounceAnimation(
                            delay: 2,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selecetedMode = Mode.bored;
                                });
                              },
                              child: ExpressionContainer(
                                  selectedMode: selecetedMode == Mode.bored,
                                  exp: "😒",
                                  text: "#bored"),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          ScaleFadeBounceAnimation(
                            delay: 3,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selecetedMode = Mode.despressed;
                                });
                              },
                              child: ExpressionContainer(
                                  selectedMode:
                                      selecetedMode == Mode.despressed,
                                  exp: "😩",
                                  text: "#depressed"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SliderButton(
                        width: 400,
                        height: 80,
                        shimmer: false,
                        backgroundColor: const Color(0xFF4C3528),
                        buttonSize: 60,
                        icon: const Icon(
                          Icons.fastfood_rounded,
                          color: Colors.black,
                        ),
                        action: () async {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text("Item added to diet !")));
                          context.pop();
                        },
                        label: Text(
                          "Add Meal   >>>",
                          style: GoogleFonts.poppins(
                              fontSize: 24,
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

enum Mode { hungry, bored, despressed }
