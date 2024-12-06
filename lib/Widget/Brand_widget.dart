import 'package:ecommerce_app/Model/category_Items/Brand_list.dart';

import 'package:flutter/material.dart';

class BrandWidget extends StatelessWidget {
  final Brand brand;
  final bool IsSelected;
  final VoidCallback onTap;
  const BrandWidget({
    super.key,
    this.IsSelected = false,
    required this.brand,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    double iconsize = MediaQuery.sizeOf(context).height * 0.04;
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: IsSelected
              ? const Color.fromARGB(255, 173, 42, 32)
              : Colors.black26,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
              width: 1,
              color: IsSelected
                  ? const Color.fromARGB(255, 173, 42, 32)
                  : Colors.black26),
        ),
        child: Row(
          children: [
            Image.asset(brand.Icon,
                height: iconsize,
                width: iconsize,
                fit: BoxFit.contain,
                color: IsSelected ? Colors.white : Colors.black),
            Text(
              brand.name,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: IsSelected ? Colors.white : Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
