part of 'values.dart';

class Decorations {
  static const BoxDecoration primaryDecoration = BoxDecoration(
    color: AppColors.secondaryColor,
    borderRadius: const BorderRadius.only(
      topLeft: const Radius.circular(Sizes.RADIUS_30),
      topRight: const Radius.circular(Sizes.RADIUS_30),
    ),
  );

  static customBoxDecoration({
    double blurRadius = 5,
    Color color = const Color(0xFFD6D7FB),
  }) {
    return BoxDecoration(
      boxShadow: [
        BoxShadow(blurRadius: blurRadius, color: color),
      ],
    );
  }
}
