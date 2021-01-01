part of values;

class Data {
  static List<PillItem> pillItems = [
    PillItem(title: StringConst.FOOTWEAR, color: AppColors.accentPurpleColor),
    PillItem(title: StringConst.SPORTS, color: AppColors.accentYellowColor),
    PillItem(title: StringConst.BEAUTY, color: AppColors.accentDarkGreenColor),
    PillItem(title: StringConst.FASHION, color: AppColors.accentOrangeColor),
    PillItem(title: StringConst.ART, color: AppColors.accentPinkColor),
    PillItem(title: StringConst.JEWELRY, color: AppColors.accentPurpleColor),
    PillItem(title: StringConst.PRADA, color: AppColors.accentYellowColor),
    PillItem(title: StringConst.SUPREME, color: AppColors.accentDarkGreenColor),
    PillItem(title: StringConst.NIKE, color: AppColors.accentOrangeColor),
    PillItem(title: StringConst.VANS, color: AppColors.accentPinkColor),
    PillItem(title: StringConst.GUCCI, color: AppColors.accentPurpleColor),
    PillItem(title: StringConst.YEEZY, color: AppColors.accentYellowColor),
    PillItem(title: StringConst.ADIDAS, color: AppColors.accentDarkGreenColor),
    PillItem(title: StringConst.BALENCIAGA, color: AppColors.accentOrangeColor),
    PillItem(title: StringConst.HOT_DROP, color: AppColors.accentPinkColor),
    PillItem(title: StringConst.TOYS, color: AppColors.accentPurpleColor),
    PillItem(title: StringConst.OFF_WHITE, color: AppColors.accentYellowColor),
  ];

  static List<MenuItem> menuItems = [
    MenuItem(
      title: StringConst.HOME,
      textColor: AppColors.accentPurpleColor,
      routeName: Routes.homeScreen,
    ),
    MenuItem(
      title: StringConst.CATEGORIES,
      textColor: AppColors.accentOrangeColor,
      routeName: Routes.categoriesScreen,
    ),
    MenuItem(
      title: StringConst.NEW_IN,
      textColor: AppColors.accentPinkColor,
    ),
    MenuItem(
      title: StringConst.SALE,
      textColor: AppColors.accentYellowColor,
    ),
    MenuItem(
      title: StringConst.PROFILE,
      textColor: AppColors.accentDarkGreenColor,
      routeName: Routes.profileScreen,
    ),
  ];

  static List<String> userData = [
    StringConst.ORDERS_AND_RETURNS,
    StringConst.PERSONAL_DATA_PASSWORD,
    StringConst.FAQ,
  ];

  static List<SocialItem> socialItems = [
    SocialItem(
      iconData: FeatherIcons.phone,
      backgroundColor: AppColors.accentPurpleColor,
    ),
    SocialItem(
      iconData: FeatherIcons.mail,
      backgroundColor: AppColors.accentOrangeColor,
    ),
    SocialItem(
      iconData: FeatherIcons.instagram,
      backgroundColor: AppColors.accentDarkGreenColor,
    ),
    SocialItem(
      iconData: FeatherIcons.facebook,
      backgroundColor: AppColors.accentYellowColor,
    ),
  ];

  static List<CategoryItem> categoryItems = [
    CategoryItem(
      title: StringConst.SNEAKERS,
      imagePath: ImagePath.NIKE_SHOE_1,
      subtitle: "233",
      subtitleColor: AppColors.accentPurpleColor,
    ),
    CategoryItem(
      title: StringConst.JEWELRY,
      imagePath: ImagePath.NIKE_SHOE_2,
      subtitle: "26",
      subtitleColor: AppColors.accentYellowColor,
    ),
    CategoryItem(
      title: StringConst.SNEAKERS,
      imagePath: ImagePath.NIKE_SHOE_3,
      subtitle: "17",
      subtitleColor: AppColors.accentDarkGreenColor,
    ),
    CategoryItem(
      title: StringConst.SNEAKERS,
      imagePath: ImagePath.NIKE_SHOE_4,
      subtitle: "78",
      subtitleColor: AppColors.accentOrangeColor,
    ),
    CategoryItem(
      title: StringConst.SNEAKERS,
      imagePath: ImagePath.SHOE_5,
      subtitle: "126",
      subtitleColor: AppColors.accentPinkColor,
    ),
  ];

  static List<ProductDealItem> productDealItems = [
    ProductDealItem(
      title: StringConst.SNEAKERS,
      subtitle: StringConst.OFF_WHITE,
      imagePath: ImagePath.NIKE_SHOE_4,
      price: "\$580",
    ),
    ProductDealItem(
      title: StringConst.SNEAKERS,
      subtitle: StringConst.OFF_WHITE,
      imagePath: ImagePath.NIKE_SHOE_4,
      price: "\$230",
    ),
    ProductDealItem(
      title: StringConst.SNEAKERS,
      subtitle: StringConst.OFF_WHITE,
      imagePath: ImagePath.NIKE_SHOE_4,
      price: "\$80",
    ),
    ProductDealItem(
      title: StringConst.SNEAKERS,
      subtitle: StringConst.OFF_WHITE,
      imagePath: ImagePath.NIKE_SHOE_4,
      price: "\$159",
    ),
    ProductDealItem(
      title: StringConst.SNEAKERS,
      subtitle: StringConst.OFF_WHITE,
      imagePath: ImagePath.NIKE_SHOE_4,
      price: "\$99",
    ),
  ];

  static List<ProductItem> productItems = [
    ProductItem(
      title: StringConst.SNEAKERS,
      imagePath: ImagePath.AIR_JORDAN_1_MID_SE,
      price: "\$180",
    ),
    ProductItem(
      title: StringConst.SNEAKERS,
      imagePath: ImagePath.AIR_JORDAN_1_MID_SE,
      price: "\$380",
    ),
    ProductItem(
      title: StringConst.SNEAKERS,
      imagePath: ImagePath.AIR_JORDAN_1_MID_SE,
      price: "\$75",
    ),
    ProductItem(
      title: StringConst.SNEAKERS,
      imagePath: ImagePath.AIR_JORDAN_1_MID_SE,
      price: "\$99",
    ),
  ];
}
