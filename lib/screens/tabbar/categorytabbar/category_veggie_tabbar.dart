// ignore_for_file: must_be_immutable

import 'package:cheap_charly/data/category-data/category.data.dart';
import 'package:cheap_charly/data/home-page-data/home-page-data.dart';
import 'package:cheap_charly/models/categoryProductModel.dart';
import 'package:cheap_charly/routes/routes.dart';
import 'package:cheap_charly/screens/category/sub_category.dart';
import 'package:cheap_charly/widgets/category_product_widget.dart';
import 'package:flutter/material.dart';

class CategoryVeggieTabBar extends StatelessWidget {
  List<CategoryProductModel> categoryProductModel = [];
  CategoryVeggieTabBar({
    this.categoryProductModel,
  });

  @override
  Widget build(BuildContext context) {
    var data;
    buildConditions(index) {
      if (index == 0) {
        PageRouting.goToNextPage(
          //fillClothData[index]
          navigateTo: SubCategory(
            productModel: data.productModel,
            productData: veggiesData,
            productName: data.productName,
          ),
          context: context,
        );
      } else if (index == 1) {
        PageRouting.goToNextPage(
          //fillClothData[index]
          navigateTo: SubCategory(
            productModel: data.productModel,
            productData: veggiesData,
            productName: data.productName,
          ),
          context: context,
        );
      } else if (index == 2) {
        PageRouting.goToNextPage(
          navigateTo: SubCategory(
            productModel: seasonalVeggiesData[index].productModel,
            productData: seasonalVeggiesData,
            productName: nutriData[index].productName,
          ),
          context: context,
        );
      } else if (index == 3) {
        PageRouting.goToNextPage(
          navigateTo: SubCategory(
            productModel: seasonalVeggiesData[index].productModel,
            productData: seasonalVeggiesData,
            productName: nutriData[index].productName,
          ),
          context: context,
        );
      } else if (index == 4) {
        PageRouting.goToNextPage(
          navigateTo: SubCategory(
            productModel: seasonalVeggiesData[index].productModel,
            productData: seasonalVeggiesData,
            productName: nutriData[index].productName,
          ),
          context: context,
        );
      }
    }

    return ListView.builder(
      shrinkWrap: true,
      itemCount: categoryProductModel.length,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        data = categoryProductModel[index];
        return CategoryProductWidget(
          onPressed: () {
            buildConditions(index);
          },
          productImage: data.productImage,
          productModel: "${veggiesData.length}\t${data.productModel}",
          productName: data.productName,
        );
      },
    );
  }
}
