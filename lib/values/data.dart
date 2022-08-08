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

  static List<DropMenuItem> menuItems = [
    DropMenuItem(
      title: StringConst.HOME,
      textColor: AppColors.accentPurpleColor,
      route: HomeScreenRoute(),
    ),
    DropMenuItem(
      title: StringConst.CATEGORIES,
      textColor: AppColors.accentOrangeColor,
      route: CategoriesScreenRoute(),
    ),
    DropMenuItem(
      title: StringConst.NEW_IN,
      textColor: AppColors.accentPinkColor,
    ),
    DropMenuItem(
      title: StringConst.SALE,
      textColor: AppColors.accentYellowColor,
    ),
    DropMenuItem(
      title: StringConst.PROFILE,
      textColor: AppColors.accentDarkGreenColor,
      route: ProfileScreenRoute(),
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

  static List<CategoryItem> newArrivalItems = [
    CategoryItem(
      title: StringConst.TROUSERS,
      imagePath: ImagePath.GUCCI_TROUSER,
      subtitle: "56",
      subtitleColor: AppColors.accentOrangeColor,
    ),
    CategoryItem(
      title: StringConst.SHIRTS,
      imagePath: ImagePath.GUCCI_JACKET,
      subtitle: "26",
      subtitleColor: AppColors.accentYellowColor,
    ),
    CategoryItem(
      title: StringConst.JEWELRY,
      imagePath: ImagePath.NECKLACE_1,
      subtitle: "17",
      subtitleColor: AppColors.accentDarkGreenColor,
    ),
  ];

  static List<CategoryItem> categoryItems = [
    CategoryItem(
      title: StringConst.SNEAKERS,
      imagePath: ImagePath.AIR_VAPOR_MAX_SLIDE_4,
      subtitle: "56",
      subtitleColor: AppColors.accentPurpleColor,
    ),
    CategoryItem(
      title: StringConst.SHIRTS,
      imagePath: ImagePath.GUCCI_JACKET,
      subtitle: "26",
      subtitleColor: AppColors.accentYellowColor,
    ),
    CategoryItem(
      title: StringConst.JEWELRY,
      imagePath: ImagePath.NECKLACE_1,
      subtitle: "17",
      subtitleColor: AppColors.accentDarkGreenColor,
    ),
  ];

  static List<ProductDealItem> productDealItems = [
    ProductDealItem(
      title: StringConst.NIKE_BLUE,
      subtitle: StringConst.AIR_BLUE,
      imagePath: ImagePath.NIKE_BLUE_SHOE,
      price: "\$250",
    ),
    ProductDealItem(
      title: StringConst.AIR_VAPOR_MAX,
      subtitle: StringConst.AIR_VAPOR_MAX_TAG,
      imagePath: ImagePath.AIR_MAX_2090_SLIDE_2,
      price: "\$199",
    ),
    ProductDealItem(
      title: StringConst.AIR_MAX,
      subtitle: StringConst.AIR_MAX_TAG,
      imagePath: ImagePath.AIR_MAX_90_SLIDE_2,
      price: "\$99",
    ),
  ];

  static List<ProductDealItem> productLatestItems = [
    ProductDealItem(
      title: StringConst.NIKE_GREEN,
      subtitle: StringConst.AIR_GREEN,
      imagePath: ImagePath.NIKE_GREEN_SHOE,
      price: "\$299",
    ),
    ProductDealItem(
      title: StringConst.AIR_VAPOR_MAX,
      subtitle: StringConst.AIR_VAPOR_MAX_TAG,
      imagePath: ImagePath.AIR_MAX_2090_SLIDE_2,
      price: "\$199",
    ),
    ProductDealItem(
      title: StringConst.AIR_MAX,
      subtitle: StringConst.AIR_MAX_TAG,
      imagePath: ImagePath.AIR_MAX_90_SLIDE_2,
      price: "\$99",
    ),
  ];

  static List<ProductDealItem> trendingItems = [
    ProductDealItem(
      title: StringConst.YSL_JACKET,
      subtitle: StringConst.YSL_JACKET_TAG,
      imagePath: ImagePath.SUEDE_YSL_JACKET,
      price: "\$450",
    ),
    ProductDealItem(
      title: StringConst.NECKLACE_2,
      subtitle: StringConst.NECKLACE_2_TAG,
      imagePath: ImagePath.NECKLACE_4,
      price: "\$199",
    ),
    ProductDealItem(
      title: StringConst.AIR_MAX,
      subtitle: StringConst.AIR_MAX_TAG,
      imagePath: ImagePath.AIR_MAX_90_SLIDE_2,
      price: "\$99",
    ),
  ];

  static List<ProductDealItem> exploreItems = [
    ProductDealItem(
      title: StringConst.NECKLACE_1,
      subtitle: StringConst.MERMAID_NECKLACE,
      imagePath: ImagePath.NECKLACE_2,
      price: "\$70",
    ),
    ProductDealItem(
      title: StringConst.GUCCI_JEANS_SHIRT,
      subtitle: StringConst.SWAG,
      imagePath: ImagePath.JEAN_SHIRT,
      price: "\$1250",
    ),
    ProductDealItem(
      title: StringConst.NIKE_TC,
      subtitle: StringConst.NIKE_TC_TAG,
      imagePath: ImagePath.NIKE_TC_7900,
      price: "\$230",
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

  static List<ProductItem> shirts = [
    ProductItem(
      title: StringConst.GUCCI_SHIRT,
      imagePath: ImagePath.GUCCI_SHIRT,
      price: "\$1025",
      tag: StringConst.GUCCI_SHIRT,
      images: gucciShirtImages,
      sizes: shirtSizes,
    ),
    ProductItem(
      title: StringConst.BOMBER_JACKET,
      imagePath: ImagePath.BOMBER_JACKET_1,
      price: "\$400",
      tag: StringConst.BOMBER_JACKET_TAG,
      images: bomberJacket,
      sizes: shirtSizes,
    ),
    ProductItem(
      title: StringConst.SUEDE_DENIM,
      imagePath: ImagePath.SUEDE_DENIM_1,
      price: "\$399",
      tag: StringConst.SUEDE_DENIM_TAG,
      images: suedeDenim,
      sizes: shirtSizes,
    ),
  ];

  static List<ProductItem> jewelry = [
    ProductItem(
      title: StringConst.NECKLACE_1,
      imagePath: ImagePath.NECKLACE_1,
      price: "\$125",
      tag: StringConst.NECKLACE_1_TAG,
      images: silverNecklace,
      sizes: necklaceSizes,
    ),
    ProductItem(
      title: StringConst.NECKLACE_2,
      imagePath: ImagePath.NECKLACE_3,
      price: "\$125",
      tag: StringConst.NECKLACE_2_TAG,
      images: loveNecklace,
      sizes: necklaceSizes,
    ),
    ProductItem(
      title: StringConst.NECKLACE_3,
      imagePath: ImagePath.NECKLACE_5,
      price: "\$125",
      tag: StringConst.NECKLACE_3_TAG,
      images: bananaNecklace,
      sizes: necklaceSizes,
    ),
  ];

  static Map<String, List<ProductItem>> productCategories = {
    StringConst.SNEAKERS: sneakers,
    StringConst.SHIRTS: shirts,
    StringConst.JEWELRY: jewelry,
  };

  static List<SelectorModel> necklaceSizes = [
    SelectorModel(
      title: "6",
      isSelected: false,
      backgroundColor: AppColors.accentOrangeColor,
    ),
    SelectorModel(
      title: "8",
      isSelected: false,
      backgroundColor: AppColors.accentPurpleColor,
    ),
    SelectorModel(
      title: "9",
      isSelected: false,
      backgroundColor: AppColors.accentYellowColor,
    ),
    SelectorModel(
      title: "10",
      isSelected: false,
      backgroundColor: AppColors.accentPinkColor,
    ),
  ];
  static List<SelectorModel> shirtSizes = [
    SelectorModel(
      title: "M",
      isSelected: false,
      backgroundColor: AppColors.accentPurpleColor,
    ),
    SelectorModel(
      title: "L",
      isSelected: false,
      backgroundColor: AppColors.accentPinkColor,
    ),
    SelectorModel(
      title: "X",
      isSelected: false,
      backgroundColor: AppColors.accentPurpleColor,
    ),
    SelectorModel(
      title: "XL",
      isSelected: false,
      backgroundColor: AppColors.accentYellowColor,
    ),
    SelectorModel(
      title: "XX",
      isSelected: false,
      backgroundColor: AppColors.accentDarkGreenColor,
    ),
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

  static List<String> gucciShirtImages = [
    ImagePath.GUCCI_SHIRT,
    ImagePath.GUCCI_JACKET,
    ImagePath.GUCCI_TROUSER,
  ];
  static List<String> suedeDenim = [
    ImagePath.SUEDE_DENIM_1,
    ImagePath.SUEDE_DENIM_2,
    ImagePath.SUEDE_YSL_JACKET,
  ];

  static List<String> bomberJacket = [
    ImagePath.BOMBER_JACKET_1,
    ImagePath.BOMBER_JACKET_2,
    ImagePath.BOMBER_JACKET_3,
  ];

  static List<String> silverNecklace = [
    ImagePath.NECKLACE_1,
    ImagePath.NECKLACE_2,
  ];

  static List<String> loveNecklace = [
    ImagePath.NECKLACE_3,
    ImagePath.NECKLACE_4,
  ];

  static List<String> bananaNecklace = [
    ImagePath.NECKLACE_5,
  ];

  static List<Color> colors = [
    AppColors.accentPurpleColor,
    AppColors.accentPinkColor,
    AppColors.accentYellowColor,
    AppColors.accentDarkGreenColor,
    AppColors.accentOrangeColor,
    AppColors.primaryColor,
    AppColors.secondaryColor2,
    AppColors.secondaryColor,
  ];

  static List<BrandItem> brands = [
    BrandItem(
      brand: StringConst.NIKE,
      imagePath: ImagePath.NIKE_SWOOSH,
      color: AppColors.accentPurpleColor,
    ),
    BrandItem(
      brand: StringConst.ADIDAS,
      imagePath: ImagePath.ADIDAS,
      color: AppColors.accentPinkColor,
    ),
    BrandItem(
      brand: StringConst.JORDAN,
      imagePath: ImagePath.JORDAN,
      color: AppColors.accentYellowColor,
    ),
    BrandItem(
      brand: StringConst.NEW_BALANCE,
      imagePath: ImagePath.NEW_BALANCE,
      color: AppColors.accentDarkGreenColor,
    ),
    BrandItem(
      brand: StringConst.PUMA,
      imagePath: ImagePath.PUMA,
      color: AppColors.accentOrangeColor,
    ),
    BrandItem(
      brand: StringConst.REEBOK,
      imagePath: ImagePath.REEBOK,
      color: AppColors.accentPurpleColor,
    ),
    BrandItem(
      brand: StringConst.TIMBERLAND,
      imagePath: ImagePath.TIMBERLAND,
      color: AppColors.accentDarkGreenColor,
    ),
    BrandItem(
      brand: StringConst.KSWISS,
      imagePath: ImagePath.KSWISS,
      color: AppColors.accentOrangeColor,
    ),
  ];

  static List<CheckOutItem> checkOutItems = [
    CheckOutItem(
      title: StringConst.AIR_VAPOR_MAX,
      imagePath: ImagePath.AIR_VAPOR_MAX,
      price: "200",
      quantity: "1",
    ),
    CheckOutItem(
      title: StringConst.GUCCI_SHIRT,
      imagePath: ImagePath.GUCCI_SHIRT,
      price: "1025",
      quantity: "1",
    ),
    CheckOutItem(
      title: StringConst.NECKLACE_3,
      imagePath: ImagePath.NECKLACE_5,
      price: "125",
      quantity: "2",
    ),
  ];
}
