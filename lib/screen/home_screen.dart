import 'package:ecommerce_app/Widget/button_nav_bar.dart';
import 'package:ecommerce_app/screen/category/category_item.dart';
import 'package:ecommerce_app/screen/category/product_grid.dart';
import 'package:ecommerce_app/screen/widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchcontroller = TextEditingController();
  String searchtext = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * 0.02,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              appbar(context),
              const SizedBox(
                height: 15,
              ),
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: "Discover\n",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: "Get the Best Sneakers here",
                        style: TextStyle(
                            color: Colors.black26,
                            fontSize: 15,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SearchBox(
                  controller: searchcontroller,
                  onchange: (value) {
                    setState(() {
                      searchtext = value;
                    });
                  }),
              const SizedBox(
                height: 5,
              ),
              CategoryItem(),
              const SizedBox(
                height: 5,
              ),
              productGrid(
                context,
              )
            ],
          ),
        )),
      ),
      bottomNavigationBar: buttonNavBar(context),
    );
  }
}
