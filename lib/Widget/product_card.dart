import 'package:ecommerce_app/Model/category_Items/product_list.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final Function onTap;
  final EdgeInsets margin;
  const ProductCard({
    super.key,
    required this.product,
    required this.onTap,
    this.margin = const EdgeInsets.only(),
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        margin: margin,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black26,
                spreadRadius: 1,
                blurRadius: 10,
                offset: Offset(2, 3)),
          ],
          image: DecorationImage(
              image: AssetImage(product.image), fit: BoxFit.contain),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$ ${product.price}",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 173, 42, 32)),
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: const Color.fromARGB(255, 173, 42, 32),
                  ),
                ],
              ),
              Text(
                product.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              )
            ],
          ),
        ),
      ),
    );
  }
}
