// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:diet_manager/features/details/model/data_model.dart';
import 'package:flutter/rendering.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';
import 'package:palette_generator/palette_generator.dart';

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
      backgroundColor: Color(0xFFB2A186),
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
          // Container(
          //   height: MediaQuery.sizeOf(context).height * 0.5 + 55,
          //   width: 430,
          //   decoration: const BoxDecoration(
          //       color: Colors.white,
          //       borderRadius: BorderRadius.only(
          //           topLeft: Radius.circular(60),
          //           topRight: Radius.circular(60)),
          //       boxShadow: [
          //         const BoxShadow(
          //             color: Colors.grey,
          //             blurRadius: 20,
          //             blurStyle: BlurStyle.outer,
          //             spreadRadius: 1)
          //       ]),
          //   child: Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: Column(
          //         children: [
          //           Container(
          //             height: 6,
          //             width: 100,
          //             decoration: BoxDecoration(
          //                 color: Colors.grey,
          //                 borderRadius: BorderRadius.circular(30)),
          //           )
          //         ],
          //       )),
          // ),
          showbottomsheet(context),
        ],
      ),
    );
  }
}

showbottomsheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        height: MediaQuery.sizeOf(context).height * 0.6,
        width: 430,
        decoration: BoxDecoration(color: Colors.red),
        child: Text("Sdssd"),
      );
    },
  );
}
