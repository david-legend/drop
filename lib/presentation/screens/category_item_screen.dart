import 'package:auto_route/auto_route.dart';
import 'package:drop/presentation/routes/router.gr.dart';
import 'package:drop/presentation/widgets/drop_appbar.dart';
import 'package:drop/presentation/widgets/product_card.dart';
import 'package:drop/presentation/widgets/section_heading_2.dart';
import 'package:drop/presentation/widgets/spaces.dart';
import 'package:drop/values/values.dart';
import 'package:flutter/material.dart';

class CategoryItemScreen extends StatelessWidget {
  final String category;

  CategoryItemScreen(this.category);

  @override
  Widget build(BuildContext context) {
    List<ProductItem> products = Data.productCategories[category]!;
    return Scaffold(
      body: Container(
        child: ListView(
          padding: EdgeInsets.only(
            left: Sizes.PADDING_24,
            top: Sizes.PADDING_32,
            bottom: Sizes.PADDING_24,
          ),
          children: [
            PreferredSize(
              preferredSize: Size.fromHeight(Sizes.HEIGHT_56),
              child: DropAppBar(
                onLeadingTap: () {},
              ),
            ),
            SpaceH20(),
            SectionHeading2(
              title1: category,
              title2: StringConst.SEE_ALL,
            ),
            SpaceH8(),
            ListView.separated(
              itemCount: products.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              separatorBuilder: (BuildContext context, int index) {
                return SpaceH8();
              },
              itemBuilder: (BuildContext context, int index) {
                return ProductCard(
                  title: products[index].title,
                  price: products[index].price,
                  imagePath: products[index].imagePath,
                  onTap: () {
                    AutoRouter.of(context).push(
                      ProductScreenRoute(product: products[index]),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
