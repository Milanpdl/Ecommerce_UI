import 'package:flutter/material.dart';

import '../../List _item/product_List.dart';

import '../../Widget/product_card.dart';

import 'package:ecommerce_app/Model/category_Items/product_list.dart';

Widget productGrid(BuildContext context) {
  return Expanded(
    child: Container(
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: products.length,
          itemBuilder: (context, index) {
            Product _product = products[index];
            return ProductCard(
              product: _product,
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.02,
                  vertical: MediaQuery.of(context).size.height * 0.02),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) {
                //   return ProductDetails(
                //     product: ,
                //   );
                // }));
              },
            );
          }),
    ),
  );
}
