import 'package:flutter/material.dart';

/// Tailwind CSS-inspired color utilities for Flutter.
///
/// Provides background color extensions for any Widget.
/// Colors follow Material Design shade naming (50-900).
///
/// Example:
/// ```dart
/// Container().bgBlue600()  // Blue background
/// Text('Hello').bgGray100()  // Gray background
/// ```
extension ColorExtensions on Widget {
  // ==================== BACKGROUND - BLUE ====================

  /// Sets background color to blue shade 50 (lightest).
  Widget bgBlue50() => Container(color: Colors.blue.shade50, child: this);

  /// Sets background color to blue shade 100.
  Widget bgBlue100() => Container(color: Colors.blue.shade100, child: this);

  /// Sets background color to blue shade 200.
  Widget bgBlue200() => Container(color: Colors.blue.shade200, child: this);

  /// Sets background color to blue shade 300.
  Widget bgBlue300() => Container(color: Colors.blue.shade300, child: this);

  /// Sets background color to blue shade 400.
  Widget bgBlue400() => Container(color: Colors.blue.shade400, child: this);

  /// Sets background color to blue shade 500 (primary).
  Widget bgBlue500() => Container(color: Colors.blue.shade500, child: this);

  /// Sets background color to blue shade 600.
  Widget bgBlue600() => Container(color: Colors.blue.shade600, child: this);

  /// Sets background color to blue shade 700.
  Widget bgBlue700() => Container(color: Colors.blue.shade700, child: this);

  /// Sets background color to blue shade 800.
  Widget bgBlue800() => Container(color: Colors.blue.shade800, child: this);

  /// Sets background color to blue shade 900 (darkest).
  Widget bgBlue900() => Container(color: Colors.blue.shade900, child: this);

  // ==================== BACKGROUND - RED ====================

  /// Sets background color to red shade 50 (lightest).
  Widget bgRed50() => Container(color: Colors.red.shade50, child: this);

  /// Sets background color to red shade 100.
  Widget bgRed100() => Container(color: Colors.red.shade100, child: this);

  /// Sets background color to red shade 200.
  Widget bgRed200() => Container(color: Colors.red.shade200, child: this);

  /// Sets background color to red shade 300.
  Widget bgRed300() => Container(color: Colors.red.shade300, child: this);

  /// Sets background color to red shade 400.
  Widget bgRed400() => Container(color: Colors.red.shade400, child: this);

  /// Sets background color to red shade 500 (primary).
  Widget bgRed500() => Container(color: Colors.red.shade500, child: this);

  /// Sets background color to red shade 600.
  Widget bgRed600() => Container(color: Colors.red.shade600, child: this);

  /// Sets background color to red shade 700.
  Widget bgRed700() => Container(color: Colors.red.shade700, child: this);

  /// Sets background color to red shade 800.
  Widget bgRed800() => Container(color: Colors.red.shade800, child: this);

  /// Sets background color to red shade 900 (darkest).
  Widget bgRed900() => Container(color: Colors.red.shade900, child: this);

  // ==================== BACKGROUND - GREEN ====================

  /// Sets background color to green shade 50 (lightest).
  Widget bgGreen50() => Container(color: Colors.green.shade50, child: this);

  /// Sets background color to green shade 100.
  Widget bgGreen100() => Container(color: Colors.green.shade100, child: this);

  /// Sets background color to green shade 200.
  Widget bgGreen200() => Container(color: Colors.green.shade200, child: this);

  /// Sets background color to green shade 300.
  Widget bgGreen300() => Container(color: Colors.green.shade300, child: this);

  /// Sets background color to green shade 400.
  Widget bgGreen400() => Container(color: Colors.green.shade400, child: this);

  /// Sets background color to green shade 500 (primary).
  Widget bgGreen500() => Container(color: Colors.green.shade500, child: this);

  /// Sets background color to green shade 600.
  Widget bgGreen600() => Container(color: Colors.green.shade600, child: this);

  /// Sets background color to green shade 700.
  Widget bgGreen700() => Container(color: Colors.green.shade700, child: this);

  /// Sets background color to green shade 800.
  Widget bgGreen800() => Container(color: Colors.green.shade800, child: this);

  /// Sets background color to green shade 900 (darkest).
  Widget bgGreen900() => Container(color: Colors.green.shade900, child: this);

  // ==================== BACKGROUND - YELLOW ====================

  /// Sets background color to yellow shade 50 (lightest).
  Widget bgYellow50() => Container(color: Colors.yellow.shade50, child: this);

  /// Sets background color to yellow shade 100.
  Widget bgYellow100() => Container(color: Colors.yellow.shade100, child: this);

  /// Sets background color to yellow shade 200.
  Widget bgYellow200() => Container(color: Colors.yellow.shade200, child: this);

  /// Sets background color to yellow shade 300.
  Widget bgYellow300() => Container(color: Colors.yellow.shade300, child: this);

  /// Sets background color to yellow shade 400.
  Widget bgYellow400() => Container(color: Colors.yellow.shade400, child: this);

  /// Sets background color to yellow shade 500 (primary).
  Widget bgYellow500() => Container(color: Colors.yellow.shade500, child: this);

  /// Sets background color to yellow shade 600.
  Widget bgYellow600() => Container(color: Colors.yellow.shade600, child: this);

  /// Sets background color to yellow shade 700.
  Widget bgYellow700() => Container(color: Colors.yellow.shade700, child: this);

  /// Sets background color to yellow shade 800.
  Widget bgYellow800() => Container(color: Colors.yellow.shade800, child: this);

  /// Sets background color to yellow shade 900 (darkest).
  Widget bgYellow900() => Container(color: Colors.yellow.shade900, child: this);

  // ==================== BACKGROUND - PURPLE ====================

  /// Sets background color to purple shade 50 (lightest).
  Widget bgPurple50() => Container(color: Colors.purple.shade50, child: this);

  /// Sets background color to purple shade 100.
  Widget bgPurple100() => Container(color: Colors.purple.shade100, child: this);

  /// Sets background color to purple shade 200.
  Widget bgPurple200() => Container(color: Colors.purple.shade200, child: this);

  /// Sets background color to purple shade 300.
  Widget bgPurple300() => Container(color: Colors.purple.shade300, child: this);

  /// Sets background color to purple shade 400.
  Widget bgPurple400() => Container(color: Colors.purple.shade400, child: this);

  /// Sets background color to purple shade 500 (primary).
  Widget bgPurple500() => Container(color: Colors.purple.shade500, child: this);

  /// Sets background color to purple shade 600.
  Widget bgPurple600() => Container(color: Colors.purple.shade600, child: this);

  /// Sets background color to purple shade 700.
  Widget bgPurple700() => Container(color: Colors.purple.shade700, child: this);

  /// Sets background color to purple shade 800.
  Widget bgPurple800() => Container(color: Colors.purple.shade800, child: this);

  /// Sets background color to purple shade 900 (darkest).
  Widget bgPurple900() => Container(color: Colors.purple.shade900, child: this);

  // ==================== BACKGROUND - PINK ====================

  /// Sets background color to pink shade 50 (lightest).
  Widget bgPink50() => Container(color: Colors.pink.shade50, child: this);

  /// Sets background color to pink shade 100.
  Widget bgPink100() => Container(color: Colors.pink.shade100, child: this);

  /// Sets background color to pink shade 200.
  Widget bgPink200() => Container(color: Colors.pink.shade200, child: this);

  /// Sets background color to pink shade 300.
  Widget bgPink300() => Container(color: Colors.pink.shade300, child: this);

  /// Sets background color to pink shade 400.
  Widget bgPink400() => Container(color: Colors.pink.shade400, child: this);

  /// Sets background color to pink shade 500 (primary).
  Widget bgPink500() => Container(color: Colors.pink.shade500, child: this);

  /// Sets background color to pink shade 600.
  Widget bgPink600() => Container(color: Colors.pink.shade600, child: this);

  /// Sets background color to pink shade 700.
  Widget bgPink700() => Container(color: Colors.pink.shade700, child: this);

  /// Sets background color to pink shade 800.
  Widget bgPink800() => Container(color: Colors.pink.shade800, child: this);

  /// Sets background color to pink shade 900 (darkest).
  Widget bgPink900() => Container(color: Colors.pink.shade900, child: this);

  // ==================== BACKGROUND - INDIGO ====================

  /// Sets background color to indigo shade 50 (lightest).
  Widget bgIndigo50() => Container(color: Colors.indigo.shade50, child: this);

  /// Sets background color to indigo shade 100.
  Widget bgIndigo100() => Container(color: Colors.indigo.shade100, child: this);

  /// Sets background color to indigo shade 200.
  Widget bgIndigo200() => Container(color: Colors.indigo.shade200, child: this);

  /// Sets background color to indigo shade 300.
  Widget bgIndigo300() => Container(color: Colors.indigo.shade300, child: this);

  /// Sets background color to indigo shade 400.
  Widget bgIndigo400() => Container(color: Colors.indigo.shade400, child: this);

  /// Sets background color to indigo shade 500 (primary).
  Widget bgIndigo500() => Container(color: Colors.indigo.shade500, child: this);

  /// Sets background color to indigo shade 600.
  Widget bgIndigo600() => Container(color: Colors.indigo.shade600, child: this);

  /// Sets background color to indigo shade 700.
  Widget bgIndigo700() => Container(color: Colors.indigo.shade700, child: this);

  /// Sets background color to indigo shade 800.
  Widget bgIndigo800() => Container(color: Colors.indigo.shade800, child: this);

  /// Sets background color to indigo shade 900 (darkest).
  Widget bgIndigo900() => Container(color: Colors.indigo.shade900, child: this);

  // ==================== BACKGROUND - GRAY ====================

  /// Sets background color to gray shade 50 (lightest).
  Widget bgGray50() => Container(color: Colors.grey.shade50, child: this);

  /// Sets background color to gray shade 100.
  Widget bgGray100() => Container(color: Colors.grey.shade100, child: this);

  /// Sets background color to gray shade 200.
  Widget bgGray200() => Container(color: Colors.grey.shade200, child: this);

  /// Sets background color to gray shade 300.
  Widget bgGray300() => Container(color: Colors.grey.shade300, child: this);

  /// Sets background color to gray shade 400.
  Widget bgGray400() => Container(color: Colors.grey.shade400, child: this);

  /// Sets background color to gray shade 500 (primary).
  Widget bgGray500() => Container(color: Colors.grey.shade500, child: this);

  /// Sets background color to gray shade 600.
  Widget bgGray600() => Container(color: Colors.grey.shade600, child: this);

  /// Sets background color to gray shade 700.
  Widget bgGray700() => Container(color: Colors.grey.shade700, child: this);

  /// Sets background color to gray shade 800.
  Widget bgGray800() => Container(color: Colors.grey.shade800, child: this);

  /// Sets background color to gray shade 900 (darkest).
  Widget bgGray900() => Container(color: Colors.grey.shade900, child: this);

  // ==================== BACKGROUND - ORANGE ====================

  /// Sets background color to orange shade 50 (lightest).
  Widget bgOrange50() => Container(color: Colors.orange.shade50, child: this);

  /// Sets background color to orange shade 100.
  Widget bgOrange100() => Container(color: Colors.orange.shade100, child: this);

  /// Sets background color to orange shade 200.
  Widget bgOrange200() => Container(color: Colors.orange.shade200, child: this);

  /// Sets background color to orange shade 300.
  Widget bgOrange300() => Container(color: Colors.orange.shade300, child: this);

  /// Sets background color to orange shade 400.
  Widget bgOrange400() => Container(color: Colors.orange.shade400, child: this);

  /// Sets background color to orange shade 500 (primary).
  Widget bgOrange500() => Container(color: Colors.orange.shade500, child: this);

  /// Sets background color to orange shade 600.
  Widget bgOrange600() => Container(color: Colors.orange.shade600, child: this);

  /// Sets background color to orange shade 700.
  Widget bgOrange700() => Container(color: Colors.orange.shade700, child: this);

  /// Sets background color to orange shade 800.
  Widget bgOrange800() => Container(color: Colors.orange.shade800, child: this);

  /// Sets background color to orange shade 900 (darkest).
  Widget bgOrange900() => Container(color: Colors.orange.shade900, child: this);

  // ==================== BACKGROUND - TEAL ====================

  /// Sets background color to teal shade 50 (lightest).
  Widget bgTeal50() => Container(color: Colors.teal.shade50, child: this);

  /// Sets background color to teal shade 100.
  Widget bgTeal100() => Container(color: Colors.teal.shade100, child: this);

  /// Sets background color to teal shade 200.
  Widget bgTeal200() => Container(color: Colors.teal.shade200, child: this);

  /// Sets background color to teal shade 300.
  Widget bgTeal300() => Container(color: Colors.teal.shade300, child: this);

  /// Sets background color to teal shade 400.
  Widget bgTeal400() => Container(color: Colors.teal.shade400, child: this);

  /// Sets background color to teal shade 500 (primary).
  Widget bgTeal500() => Container(color: Colors.teal.shade500, child: this);

  /// Sets background color to teal shade 600.
  Widget bgTeal600() => Container(color: Colors.teal.shade600, child: this);

  /// Sets background color to teal shade 700.
  Widget bgTeal700() => Container(color: Colors.teal.shade700, child: this);

  /// Sets background color to teal shade 800.
  Widget bgTeal800() => Container(color: Colors.teal.shade800, child: this);

  /// Sets background color to teal shade 900 (darkest).
  Widget bgTeal900() => Container(color: Colors.teal.shade900, child: this);

  // ==================== BACKGROUND - BASIC ====================

  /// Sets background color to white.
  Widget bgWhite() => Container(color: Colors.white, child: this);

  /// Sets background color to black.
  Widget bgBlack() => Container(color: Colors.black, child: this);

  /// Sets background color to transparent.
  Widget bgTransparent() => Container(color: Colors.transparent, child: this);
}

/// Text color extensions for Flutter Text widgets.
///
/// Provides text color utilities following Material Design shade naming.
///
/// Example:
/// ```dart
/// Text('Hello').textBlue600()  // Blue text
/// Text('Error').textRed500()   // Red text
/// ```
extension TextColorExtensions on Text {
  // Helper
  Text _copyWith({TextStyle? style}) {
    return Text(
      data ?? '',
      key: key,
      style: style,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
    );
  }

  // TEXT - BLUE

  /// Sets text color to blue shade 50 (lightest).
  Text textBlue50() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.blue.shade50),
  );

  /// Sets text color to blue shade 100.
  Text textBlue100() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.blue.shade100),
  );

  /// Sets text color to blue shade 200.
  Text textBlue200() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.blue.shade200),
  );

  /// Sets text color to blue shade 300.
  Text textBlue300() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.blue.shade300),
  );

  /// Sets text color to blue shade 400.
  Text textBlue400() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.blue.shade400),
  );

  /// Sets text color to blue shade 500 (primary).
  Text textBlue500() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.blue.shade500),
  );

  /// Sets text color to blue shade 600.
  Text textBlue600() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.blue.shade600),
  );

  /// Sets text color to blue shade 700.
  Text textBlue700() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.blue.shade700),
  );

  /// Sets text color to blue shade 800.
  Text textBlue800() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.blue.shade800),
  );

  /// Sets text color to blue shade 900 (darkest).
  Text textBlue900() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.blue.shade900),
  );

  // TEXT - RED

  /// Sets text color to red shade 50 (lightest).
  Text textRed50() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.red.shade50),
  );

  /// Sets text color to red shade 100.
  Text textRed100() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.red.shade100),
  );

  /// Sets text color to red shade 200.
  Text textRed200() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.red.shade200),
  );

  /// Sets text color to red shade 300.
  Text textRed300() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.red.shade300),
  );

  /// Sets text color to red shade 400.
  Text textRed400() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.red.shade400),
  );

  /// Sets text color to red shade 500 (primary).
  Text textRed500() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.red.shade500),
  );

  /// Sets text color to red shade 600.
  Text textRed600() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.red.shade600),
  );

  /// Sets text color to red shade 700.
  Text textRed700() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.red.shade700),
  );

  /// Sets text color to red shade 800.
  Text textRed800() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.red.shade800),
  );

  /// Sets text color to red shade 900 (darkest).
  Text textRed900() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.red.shade900),
  );

  // TEXT - GREEN

  /// Sets text color to green shade 50 (lightest).
  Text textGreen50() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.green.shade50),
  );

  /// Sets text color to green shade 100.
  Text textGreen100() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.green.shade100),
  );

  /// Sets text color to green shade 200.
  Text textGreen200() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.green.shade200),
  );

  /// Sets text color to green shade 300.
  Text textGreen300() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.green.shade300),
  );

  /// Sets text color to green shade 400.
  Text textGreen400() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.green.shade400),
  );

  /// Sets text color to green shade 500 (primary).
  Text textGreen500() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.green.shade500),
  );

  /// Sets text color to green shade 600.
  Text textGreen600() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.green.shade600),
  );

  /// Sets text color to green shade 700.
  Text textGreen700() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.green.shade700),
  );

  /// Sets text color to green shade 800.
  Text textGreen800() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.green.shade800),
  );

  /// Sets text color to green shade 900 (darkest).
  Text textGreen900() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.green.shade900),
  );

  // TEXT - GRAY

  /// Sets text color to gray shade 50 (lightest).
  Text textGray50() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.grey.shade50),
  );

  /// Sets text color to gray shade 100.
  Text textGray100() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.grey.shade100),
  );

  /// Sets text color to gray shade 200.
  Text textGray200() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.grey.shade200),
  );

  /// Sets text color to gray shade 300.
  Text textGray300() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.grey.shade300),
  );

  /// Sets text color to gray shade 400.
  Text textGray400() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.grey.shade400),
  );

  /// Sets text color to gray shade 500 (primary).
  Text textGray500() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.grey.shade500),
  );

  /// Sets text color to gray shade 600.
  Text textGray600() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.grey.shade600),
  );

  /// Sets text color to gray shade 700.
  Text textGray700() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.grey.shade700),
  );

  /// Sets text color to gray shade 800.
  Text textGray800() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.grey.shade800),
  );

  /// Sets text color to gray shade 900 (darkest).
  Text textGray900() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.grey.shade900),
  );

  // TEXT - BASIC & ADDITIONAL COLORS

  /// Sets text color to white.
  Text textWhite() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.white),
  );

  /// Sets text color to black.
  Text textBlack() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.black),
  );

  /// Sets text color to purple shade 600.
  Text textPurple600() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.purple.shade600),
  );

  /// Sets text color to pink shade 600.
  Text textPink600() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.pink.shade600),
  );

  /// Sets text color to orange shade 600.
  Text textOrange600() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.orange.shade600),
  );

  /// Sets text color to yellow shade 600.
  Text textYellow600() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.yellow.shade600),
  );

  /// Sets text color to indigo shade 600.
  Text textIndigo600() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.indigo.shade600),
  );

  /// Sets text color to teal shade 600.
  Text textTeal600() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(color: Colors.teal.shade600),
  );
}
