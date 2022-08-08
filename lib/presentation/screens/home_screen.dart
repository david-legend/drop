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
                      AutoRouter.of(context).pop();
                    },
                    child: Icon(
                      FeatherIcons.x,
                      color: AppColors.primaryColor,
                      size: Sizes.ICON_SIZE_30,
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
                itemCount: Data.newArrivalItems.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SpaceW8();
                },
                itemBuilder: (BuildContext context, int index) {
                  return CategoryCard(
                    title: Data.newArrivalItems[index].title,
                    subtitle: Data.newArrivalItems[index].subtitle!,
                    subtitleColor: Data.newArrivalItems[index].subtitleColor!,
                    imagePath: Data.newArrivalItems[index].imagePath,
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
                itemCount: Data.trendingItems.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SpaceW8();
                },
                itemBuilder: (BuildContext context, int index) {
                  return ProductDealCard(
                    title: Data.trendingItems[index].title,
                    subtitle: Data.trendingItems[index].subtitle,
                    price: Data.trendingItems[index].price,
                    imagePath: Data.trendingItems[index].imagePath,
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
                itemCount: Data.exploreItems.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SpaceW8();
                },
                itemBuilder: (BuildContext context, int index) {
                  return ProductDealCard(
                    title: Data.exploreItems[index].title,
                    subtitle: Data.exploreItems[index].subtitle,
                    price: Data.exploreItems[index].price,
                    imagePath: Data.exploreItems[index].imagePath,
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
    scaffoldKey.currentState?.openDrawer();
  }

  Widget _buildDrawerItem({
    required String title,
    Color? textColor,
    PageRouteInfo? route,
  }) {
    ThemeData theme = Theme.of(context);
    return InkWell(
      onTap: () {
        if (route != null) {
          if (route == HomeScreenRoute()) {
            AutoRouter.of(context).pop();
          } else {
            AutoRouter.of(context).push(route);
          }
        }
      },
      child: Text(
        title,
        style: theme.textTheme.headlineLarge?.copyWith(color: textColor),
      ),
    );
  }

  List<Widget> _buildMenuList(List<DropMenuItem> menuList) {
    List<Widget> items = [];

    for (int index = 0; index < menuList.length; index++) {
      items.add(
        _buildDrawerItem(
          title: menuList[index].title,
          textColor: menuList[index].textColor,
          route: menuList[index].route,
        ),
      );
      items.add(Spacer());
    }
    return items;
  }
}
