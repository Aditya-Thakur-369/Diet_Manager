import 'package:diet_manager/features/details/model/data_model.dart';
import 'package:diet_manager/features/details/widget/custom_card.dart';
import 'package:diet_manager/features/details/widget/custom_container.dart';
import 'package:diet_manager/router/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  List<DataModel> data_list = [
    DataModel(
        image: 'assets/images/1.jpg',
        name: "Pizza Rice",
        date: "20 September",
        cal: "227.0"),
    DataModel(
        image: 'assets/images/2.jpg',
        name: "Pasta",
        date: "24 September",
        cal: "192.0"),
    DataModel(
        image: 'assets/images/3.jpg',
        name: "Thin Slice Pizza",
        date: "25 September",
        cal: "151.0"),
    DataModel(
        image: 'assets/images/4.jpg',
        name: "Chillie Paneer",
        date: "27 September",
        cal: "159.0"),
    DataModel(
        image: 'assets/images/5.jpg',
        name: "Fried Egg",
        date: "30 September",
        cal: "112.0"),
    DataModel(
        image: 'assets/images/6.jpg',
        name: "Veg Soup",
        date: "2 October",
        cal: "123.0"),
    DataModel(
        image: 'assets/images/7.jpg',
        name: "Mix Salled",
        date: "7 October",
        cal: "69.0"),
    DataModel(
        image: 'assets/images/8.jpg',
        name: "Chiken Rice",
        date: "9 October",
        cal: "312.0"),
    DataModel(
        image: 'assets/images/9.jpg',
        name: "Chiken Briyani",
        date: "11 October",
        cal: "128.0"),
    DataModel(
        image: 'assets/images/10.jpg',
        name: "Sandwich",
        date: "15 October",
        cal: "157.0"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomContainer(
                    value: "34.5",
                    color: const Color(0xFFB2A186),
                    hastag: '#hungry',
                    height: 120,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  CustomContainer(
                    value: "15.4",
                    color: const Color(0xFFEAA33F),
                    hastag: '#bored',
                    height: 80,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  CustomContainer(
                    value: "8.3",
                    color: const Color(0xFFF5D72F),
                    hastag: '#depressed',
                    height: 30,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "#hungry",
                style: GoogleFonts.antic(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: data_list.length * 100 + 200,
              width: 400,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: data_list.length,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  var data = data_list[index];
                  return Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: GestureDetector(
                        onTap: () {
                          context.push(Routes.itemscreen.path, extra: data);
                        },
                        child: CustomCard(
                          image: data.image,
                          name: data.name,
                          date: data.date,
                          cal: data.cal,
                        ),
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
