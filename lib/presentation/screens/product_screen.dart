import 'package:dots_indicator/dots_indicator.dart';
import 'package:drop/presentation/layout/adaptive.dart';
import 'package:drop/presentation/widgets/custom_appbar.dart';
import 'package:drop/presentation/widgets/custom_button.dart';
import 'package:drop/presentation/widgets/product_card.dart';
import 'package:drop/presentation/widgets/section_heading_2.dart';
import 'package:drop/presentation/widgets/rounded_container.dart';
import 'package:drop/presentation/widgets/selectable_container.dart';
import 'package:drop/presentation/widgets/spaces.dart';
import 'package:drop/values/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class ProductScreen extends StatefulWidget {
  final ProductItem product;

  ProductScreen(this.product);

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  late List<SelectorModel> sizes;
  late double currentIndexPage;
  late int pageLength;

  @override
  void initState() {
    super.initState();
    currentIndexPage = 0;
    pageLength = widget.product.images.length;
    sizes = widget.product.sizes;
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.secondaryColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: const Radius.circular(Sizes.RADIUS_40),
                  bottomRight: const Radius.circular(Sizes.RADIUS_40),
                ),
              ),
              child: Stack(
                children: [
                  Container(
                    height: assignHeight(context: context, fraction: 0.35),
                    child: PageView(
                      children: _buildProductImages(widget.product.images),
                      onPageChanged: (value) {
                        setState(() => currentIndexPage = value.toDouble());
                      },
                    ),
                  ),
                  PreferredSize(
                    preferredSize: Size.fromHeight(Sizes.HEIGHT_56),
                    child: CustomAppBar(
                      hasTrailing: false,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: assignHeight(context: context, fraction: 0.25),
                    ),
                    child: Center(
                      child: _buildDotsIndicator(),
                    ),
                  ),
                ],
              ),
            ),
            SpaceH20(),
            Center(
              child: Text(
                widget.product.title,
                style: theme.textTheme.headlineLarge,
              ),
            ),
            Center(
              child: Text(
                "\"${widget.product.tag}\"",
                style: theme.textTheme.headlineLarge,
              ),
            ),
            SpaceH8(),
            Center(
              child: Text(
                "${widget.product.price} ${StringConst.CURRENCY}",
                style: theme.textTheme.headlineMedium?.copyWith(
                  fontSize: Sizes.TEXT_SIZE_28,
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Sizes.PADDING_24),
              child: SectionHeading2(
                title1: StringConst.SIZES,
                title1TextStyle: theme.textTheme.headlineSmall,
                title2: StringConst.SIZE_GUIDE,
              ),
            ),
            SpaceH16(),
            Container(
              height: 60,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: sizes.length,
                shrinkWrap: true,
                padding: EdgeInsets.only(left: Sizes.PADDING_24),
                separatorBuilder: (BuildContext context, int index) {
                  return SpaceW8();
                },
                itemBuilder: (BuildContext context, int index) {
                  return SelectableContainer(
                    model: sizes[index],
                    onTap: () {
                      setState(() {
                        sizes.forEach((element) => element.isSelected = false);
                        sizes[index].isSelected = true;
                      });
                    },
                  );
                },
              ),
            ),
            Spacer(flex: 2),
            Padding(
              padding: const EdgeInsets.only(left: Sizes.PADDING_24),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  RoundedContainer(
                    width: 50,
                    height: 50,
                    iconData: FeatherIcons.heart,
                    backgroundColor: AppColors.secondaryColor,
                    iconColor: AppColors.primaryColor,
                    iconSize: 16,
                    border: Border.all(color: AppColors.secondaryColor2),
                  ),
                  SpaceW24(),
                  Expanded(
                    child: CustomButton(
                      onPressed: () {},
                      height: Sizes.HEIGHT_60,
                      borderRadiusGeometry: AppRadius.defaultButtonRadius,
                      title: StringConst.ADD_TO_CART,
                      textStyle: theme.textTheme.titleLarge?.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  Widget _buildDotsIndicator() {
    return Container(
      height: assignHeight(context: context, fraction: 0.1),
      child: DotsIndicator(
        dotsCount: pageLength,
        position: currentIndexPage,
        decorator: DotsDecorator(
          color: AppColors.secondaryColor2,
          activeColor: AppColors.primaryColor,
          size: Size(Sizes.SIZE_12, Sizes.SIZE_5),
          activeSize: Size(Sizes.SIZE_20, Sizes.SIZE_6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              const Radius.circular(Sizes.RADIUS_8),
            ),
          ),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              const Radius.circular(Sizes.RADIUS_8),
            ),
          ),
          spacing: EdgeInsets.symmetric(horizontal: Sizes.SIZE_4),
        ),
      ),
    );
  }

  List<Widget> _buildProductImages(List<String> imageList) {
    List<Widget> images = [];

    for (int index = 0; index < imageList.length; index++) {
      images.add(
        Center(
          child: Image.asset(
            imageList[index],
            width: Sizes.WIDTH_200,
            height: Sizes.HEIGHT_200,
          ),
        ),
      );
    }
    return images;
  }
}
