// ignore_for_file: non_constant_identifier_names

import 'package:diet_manager/features/details/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selected_month = 0;
  List<String> months = [
    "September",
    "October",
    "November",
    "December",
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
  ];
  List<Widget> screens = [
    DetailsScreen(),
    const Center(
      child: Text("Center2"),
    ),
    const Center(
      child: Text("Center3"),
    ),
    const Center(
      child: Text("Center4"),
    ),
    const Center(
      child: Text("Center5"),
    ),
    const Center(
      child: Text("Center6"),
    ),
    const Center(
      child: Text("Center7"),
    ),
    const Center(
      child: Text("Center8"),
    ),
    const Center(
      child: Text("Center9"),
    ),
    const Center(
      child: Text("Center12"),
    ),
    const Center(
      child: Text("Center11"),
    ),
    const Center(
      child: Text("Center12"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.large(
        shape: CircleBorder(),
        backgroundColor: Color(0xFF4C3528),
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 40,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 14, right: 14),
        child: Column(children: [
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("n.",
                    style: GoogleFonts.alef(
                        fontSize: 30, fontWeight: FontWeight.bold)),
                const Icon(
                  Iconsax.menu5,
                  size: 30,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Monthly",
              style: GoogleFonts.poppins(fontSize: 40),
            ),
          ),
          SizedBox(
            height: 60,
            width: 420,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: months.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                var data = months[index];
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selected_month = index;
                      print(selected_month);
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 60),
                    child: AnimatedContainer(
                      decoration: BoxDecoration(
                          border: BorderDirectional(
                              bottom: BorderSide(
                        color: index == selected_month
                            ? Colors.black
                            : Colors.transparent,
                        width: 1,
                        style: BorderStyle.solid,
                      ))),
                      duration: const Duration(milliseconds: 200),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Center(
                          child: Text(
                            data,
                            style: GoogleFonts.lateef(fontSize: 32),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.7 + 10,
            width: 400,
            child: PageView(
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.6,
                  width: 400,
                  child: screens[selected_month],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
