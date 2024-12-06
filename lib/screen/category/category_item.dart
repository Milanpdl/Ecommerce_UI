import 'package:ecommerce_app/Model/category_Items/Brand_list.dart';
import 'package:ecommerce_app/Widget/Brand_widget.dart';
import 'package:ecommerce_app/List%20_item/Brand_list.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatefulWidget {
  const CategoryItem({super.key});

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

_CategoryItemState createState() => _CategoryItemState();

class _CategoryItemState extends State<CategoryItem> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.05,
      margin: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.02,
      ),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => SizedBox(
          width: 25,
        ),
        itemCount: brands.length,
        itemBuilder: (context, index) {
          Brand brand = brands[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: BrandWidget(
              IsSelected: selectedIndex == index,
              brand: brand,
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
          );
        },
      ),
    );
  }
}
