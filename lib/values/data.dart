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
      imagePath: ImagePath.AIR_MAX_90,
      subtitle: "233",
      subtitleColor: AppColors.accentPurpleColor,
    ),
    CategoryItem(
      title: StringConst.SHIRTS,
      imagePath: ImagePath.NIKE_TC_7900,
      subtitle: "26",
      subtitleColor: AppColors.accentYellowColor,
    ),
    CategoryItem(
      title: StringConst.FOOTWEAR,
      imagePath: ImagePath.AIR_VAPOR_MAX,
      subtitle: "78",
      subtitleColor: AppColors.accentOrangeColor,
    ),
    CategoryItem(
      title: StringConst.JEWELRY,
      imagePath: ImagePath.NIKE_GREEN_SHOE,
      subtitle: "17",
      subtitleColor: AppColors.accentDarkGreenColor,
    ),
  ];

  static List<ProductDealItem> productDealItems = [
    ProductDealItem(
      title: StringConst.SNEAKERS,
      subtitle: StringConst.OFF_WHITE,
      imagePath: ImagePath.NIKE_GREEN_SHOE,
      price: "\$580",
    ),
    ProductDealItem(
      title: StringConst.SNEAKERS,
      subtitle: StringConst.OFF_WHITE,
      imagePath: ImagePath.NIKE_GREEN_SHOE,
      price: "\$230",
    ),
    ProductDealItem(
      title: StringConst.SNEAKERS,
      subtitle: StringConst.OFF_WHITE,
      imagePath: ImagePath.NIKE_TC_7900_SLIDE_1,
      price: "\$80",
    ),
    ProductDealItem(
      title: StringConst.SNEAKERS,
      subtitle: StringConst.OFF_WHITE,
      imagePath: ImagePath.AIR_MAX_2090_SLIDE_2,
      price: "\$159",
    ),
    ProductDealItem(
      title: StringConst.SNEAKERS,
      subtitle: StringConst.OFF_WHITE,
      imagePath: ImagePath.AIR_MAX_90_SLIDE_2,
      price: "\$99",
    ),
  ];

  static List<ProductItem> sneakers = [
    ProductItem(
      title: StringConst.AIR_MAX,
      imagePath: ImagePath.AIR_MAX_90,
      price: "\$125",
      tag: StringConst.AIR_MAX_TAG,
      images: airMax90Images,
      sizes: shoeSizes,
    ),
    ProductItem(
      title: StringConst.AIR_VAPOR_MAX,
      imagePath: ImagePath.AIR_VAPOR_MAX,
      price: "\$200",
      tag: StringConst.AIR_VAPOR_MAX_TAG,
      images: airVaporMax2090Images,
      sizes: shoeSizes,
    ),
    ProductItem(
      title: StringConst.NIKE_TC,
      imagePath: ImagePath.NIKE_TC_7900,
      price: "\$399",
      tag: StringConst.NIKE_TC_TAG,
      images: nikeTc7900Images,
      sizes: shoeSizes,
    ),
  ];

  static Map<String, List<ProductItem>> productCategories = {
    StringConst.SNEAKERS: sneakers,
    StringConst.SHIRTS: sneakers,
    StringConst.JEWELRY: sneakers,
  };

  static List<String> shirtSizes = [
    "38",
    "39",
    "40",
    "41",
    "42",
    "43",
    "44",
    "45"
  ];

  static List<SelectorModel> shoeSizes = [
    SelectorModel(
      title: "38",
      isSelected: false,
      backgroundColor: AppColors.accentPurpleColor,
    ),
    SelectorModel(
      title: "39",
      isSelected: false,
      backgroundColor: AppColors.accentYellowColor,
    ),
    SelectorModel(
      title: "40",
      isSelected: false,
      backgroundColor: AppColors.accentDarkGreenColor,
    ),
    SelectorModel(
      title: "41",
      isSelected: false,
      backgroundColor: AppColors.accentOrangeColor,
    ),
    SelectorModel(
      title: "42",
      isSelected: false,
      backgroundColor: AppColors.accentPinkColor,
    ),
    SelectorModel(
      title: "43",
      isSelected: false,
      backgroundColor: AppColors.accentPurpleColor,
    ),
    SelectorModel(
      title: "44",
      isSelected: false,
      backgroundColor: AppColors.accentYellowColor,
    ),
    SelectorModel(
      title: "45",
      isSelected: false,
      backgroundColor: AppColors.accentOrangeColor,
    ),
  ];

  static List<String> airMax90Images = [
    ImagePath.AIR_MAX_90,
    ImagePath.AIR_MAX_90_SLIDE_1,
    ImagePath.AIR_MAX_90_SLIDE_2,
    ImagePath.AIR_MAX_90_SLIDE_3,
  ];
  static List<String> airVaporMax2090Images = [
    ImagePath.AIR_VAPOR_MAX,
    ImagePath.AIR_VAPOR_MAX_SLIDE_1,
    ImagePath.AIR_VAPOR_MAX_SLIDE_2,
    ImagePath.AIR_VAPOR_MAX_SLIDE_3,
    ImagePath.AIR_VAPOR_MAX_SLIDE_4,
  ];
  static List<String> nikeTc7900Images = [
    ImagePath.NIKE_TC_7900,
    ImagePath.NIKE_TC_7900_SLIDE_1,
    ImagePath.NIKE_TC_7900_SLIDE_2,
    ImagePath.NIKE_TC_7900_SLIDE_3,
  ];
}
