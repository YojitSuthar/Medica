part of 'theme.dart';

@immutable
class MyMedicaColors extends ThemeExtension<MyMedicaColors> {
  const MyMedicaColors({
    required this.primary,
    required this.onPrimary,
    required this.secondary,
    required this.onSecondary,
    required this.darkGrey,
    required this.btn_default,
    required this.transparent,
    required this.greyColor,
    required this.def_border_color,
    required this.textfilled_border_color,
    required this.card_border_color,
    required this.font_blue,
    required this.btn_border_color,
    required this.whiteColor,
    required this.background_grey_color,
  });

  final Color primary;
  final Color onPrimary;
  final Color secondary;
  final Color onSecondary;
  final Color darkGrey;
  final Color btn_default;
  final Color greyColor;
  final Color def_border_color;
  final Color textfilled_border_color;
  final Color card_border_color;
  final Color font_blue;
  final Color transparent;
  final Color btn_border_color;
  final Color whiteColor;
  final Color background_grey_color;

  @override
  MyMedicaColors copyWith() {
    // We don't use copyWith for the moment
    // Colors are not well defined enough to maintain this
    throw UnimplementedError();
  }

  @override
  ThemeExtension<MyMedicaColors> lerp(
    ThemeExtension<MyMedicaColors>? other,
    double t,
  ) {
    // We don't use colors lerp for the moment
    // Colors are not well defined enough to maintain this
    if (other == null) return this;
    return t < .5 ? this : other;
  }
}

MyMedicaColors myColorsExtension = const MyMedicaColors(
  primary: Color.fromRGBO(26, 93, 247, 1),
  onPrimary: Color.fromRGBO(54, 119, 250, 1),
  secondary: Color.fromRGBO(236, 242, 254, 1),
  onSecondary: Colors.black,
  darkGrey: Color.fromRGBO(97, 97, 97, 1),
  btn_default: Color.fromRGBO(54, 119, 250, 1),
  greyColor: Colors.grey,
  font_blue: Color(0xFF0060FF),
  transparent: Colors.transparent,
  background_grey_color: Color.fromRGBO(238, 238, 238, 1),
  def_border_color: Color.fromRGBO(189, 189, 189, 1),
  //shade400
  btn_border_color: Colors.blueAccent,
  textfilled_border_color: Color.fromRGBO(238, 238, 238, 1),
  //shade200
  card_border_color: Color.fromRGBO(224, 224, 224, 1),
  //shade300
  whiteColor: Colors.white,
);

extension MyMedicaColorsExtensions on ThemeData {
  MyMedicaColors get myMedicaColors => extension<MyMedicaColors>()!;
}
