import 'package:ecommerce_app/List%20_item/product_List.dart';
import 'package:flutter/material.dart';

import '../Model/category_Items/Product_list.dart';

Widget appbar(BuildContext context) {
  return SizedBox(
    height: MediaQuery.sizeOf(context).height * 0.06,
    child: const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue,
            backgroundImage: AssetImage(
              "assets/Icons/nike.png",
            ),
          )
        ],
      ),
    ),
  );
}

Widget SearchBox({
  required TextEditingController controller,
  required ValueChanged<String> onchange,
  String hintText = "Search",
}) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: Colors.white.withOpacity(0.7), // Light shadow on top-left side
          offset: Offset(-6, -6), // Moves the shadow up and left
          blurRadius: 15, // Smooth shadow
          spreadRadius: 1,
        ),
        // Dark shadow on the bottom right (creates the depth)
        BoxShadow(
          color:
              Colors.black.withOpacity(0.2), // Dark shadow on bottom-right side
          offset: Offset(6, 6), // Moves the shadow down and right
          blurRadius: 15, // Smooth shadow
          spreadRadius: 1,
        ),
      ],
    ),
    child: TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: "Search",
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.black26,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
      ),
      onChanged: onchange,
    ),
  );
}
