import 'package:auto_route/auto_route.dart';
import 'package:drop/presentation/layout/adaptive.dart';
import 'package:drop/presentation/routes/router.gr.dart';
import 'package:drop/presentation/widgets/category_card.dart';
import 'package:drop/presentation/widgets/drop_appbar.dart';
import 'package:drop/presentation/widgets/product_deal_card.dart';
import 'package:drop/presentation/widgets/section_heading_2.dart';
import 'package:drop/presentation/widgets/spaces.dart';
import 'package:drop/values/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Container(
        width: assignWidth(context: context, fraction: 1.0),
        child: Drawer(
          child: Container(
            margin: EdgeInsets.only(
              left: Sizes.PADDING_24,
              top: Sizes.PADDING_32,
            ),
            decoration: BoxDecoration(
              color: AppColors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                DropAppBar(
                  leading: InkWell(
                    onTap: () {
                      ExtendedNavigator.root.pop();
                    },
                    child: Icon(
                      FeatherIcons.x,
                      color: AppColors.primaryColor,
                      size: 36,
                    ),
                  ),
                ),
                Spacer(flex: 2),
                ..._buildMenuList(Data.menuItems),
                Spacer(flex: 4),
              ],
            ),
          ),
        ),
      ),
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
                onLeadingTap: () => _openDrawer(),
              ),
            ),
            SpaceH20(),
            SectionHeading2(
              title1: StringConst.NEW_ARRIVALS,
              title2: StringConst.SEE_ALL,
            ),
            SpaceH8(),
            Container(
              height: 250,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: Data.categoryItems.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SpaceW8();
                },
                itemBuilder: (BuildContext context, int index) {
                  return CategoryCard(
                    title: Data.categoryItems[index].title,
                    subtitle: Data.categoryItems[index].subtitle,
                    subtitleColor: Data.categoryItems[index].subtitleColor,
                    imagePath: Data.categoryItems[index].imagePath,
                    onTap: () {
                      ExtendedNavigator.root.push(
                        Routes.categoryItemScreen,
                        arguments: CategoryItemScreenArguments(
                          category: Data.categoryItems[index].title,
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            SpaceH20(),
            SectionHeading2(
              title1: StringConst.TRENDING_NOW,
              title2: StringConst.SEE_ALL,
            ),
            SpaceH8(),
            Container(
              height: 250,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: Data.productDealItems.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SpaceW8();
                },
                itemBuilder: (BuildContext context, int index) {
                  return ProductDealCard(
                    title: Data.productDealItems[index].title,
                    subtitle: Data.productDealItems[index].subtitle,
                    price: Data.productDealItems[index].price,
                    imagePath: Data.productDealItems[index].imagePath,
                  );
                },
              ),
            ),
            SpaceH20(),
            SectionHeading2(
              title1: StringConst.EXPLORE,
              title2: StringConst.SEE_ALL,
            ),
            Container(
              height: 250,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: Data.productDealItems.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SpaceW8();
                },
                itemBuilder: (BuildContext context, int index) {
                  return ProductDealCard(
                    title: Data.productDealItems[index].title,
                    subtitle: Data.productDealItems[index].subtitle,
                    price: Data.productDealItems[index].price,
                    imagePath: Data.productDealItems[index].imagePath,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _openDrawer() {
    scaffoldKey.currentState.openDrawer();
  }

  Widget _buildDrawerItem(
      {@required String title, Color textColor, String routeName}) {
    ThemeData theme = Theme.of(context);
    return InkWell(
      onTap: () {
        if (routeName != null) {
          if (routeName == Routes.homeScreen) {
            ExtendedNavigator.root.pop();
          } else {
            ExtendedNavigator.root.push(routeName);
          }
        }
      },
      child: Text(
        title,
        style: theme.textTheme.headline4.copyWith(color: textColor),
      ),
    );
  }

  List<Widget> _buildMenuList(List<MenuItem> menuList) {
    List<Widget> items = [];

    for (int index = 0; index < menuList.length; index++) {
      items.add(
        _buildDrawerItem(
          title: menuList[index].title,
          textColor: menuList[index].textColor,
          routeName: menuList[index].routeName,
        ),
      );
      items.add(Spacer());
    }
    return items;
  }
}
