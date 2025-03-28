import 'dart:ui';

abstract class BaseColors {
  const BaseColors();

  Color get primary => const Color.fromRGBO(45, 15, 213, 1);

  Color get primary30 => const Color.fromRGBO(45, 15, 213, 0.29);

  Color get secondary => const Color.fromRGBO(35, 177, 193, 1);

  Color get grayLight => const Color.fromRGBO(233, 234, 238, 1);

  Color get accent => const Color.fromRGBO(240, 244, 248, 1);

  Color get red => const Color.fromRGBO(255, 68, 68, 1);

  Color get orange => const Color.fromRGBO(236, 97, 44, 1);

  Color get subtleText => const Color.fromRGBO(146, 153, 176, 1);

  Color get divider => const Color.fromRGBO(101, 122, 147, 0.18);

  Color get tertiary => const Color.fromRGBO(0, 188, 212, 1);

  Color get stroke => const Color.fromRGBO(227, 231, 235, 1);

  Color get black => const Color.fromRGBO(0, 0, 0, 1);

  Color get text900 => const Color.fromRGBO(14, 14, 14, 1);

  Color get text800 => const Color.fromRGBO(6, 3, 6, 1);

  Color get text700 => const Color.fromRGBO(85, 95, 132, 1);

  Color get gray => const Color.fromRGBO(124, 133, 159, 1);

  Color get gray900 => const Color.fromRGBO(103, 103, 103, 1);

  Color get gray500 => const Color.fromRGBO(93, 109, 125, 1);

  Color get gray400 => const Color.fromRGBO(120, 137, 152, 1);

  Color get gray100 => const Color.fromRGBO(227, 232, 234, 1);

  Color get green => const Color.fromRGBO(0, 128, 0, 1);

  Color get background;
}
