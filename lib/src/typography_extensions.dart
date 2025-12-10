import 'package:flutter/widgets.dart';

/// Tailwind CSS-inspired typography utilities for Flutter
/// Provides font size, weight, alignment, and decoration extensions
extension TextExtensions on Text {
  // Helper
  Text _copyWith({
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
  }) {
    return Text(
      data ?? '',
      key: key,
      style: style ?? this.style,
      strutStyle: strutStyle,
      textAlign: textAlign ?? this.textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow ?? this.overflow,
      maxLines: maxLines ?? this.maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
    );
  }

  // ==================== FONT SIZES ====================
  Text textXs() =>
      _copyWith(style: (style ?? const TextStyle()).copyWith(fontSize: 12));
  Text textSm() =>
      _copyWith(style: (style ?? const TextStyle()).copyWith(fontSize: 14));
  Text textBase() =>
      _copyWith(style: (style ?? const TextStyle()).copyWith(fontSize: 16));
  Text textLg() =>
      _copyWith(style: (style ?? const TextStyle()).copyWith(fontSize: 18));
  Text textXl() =>
      _copyWith(style: (style ?? const TextStyle()).copyWith(fontSize: 20));
  Text text2Xl() =>
      _copyWith(style: (style ?? const TextStyle()).copyWith(fontSize: 24));
  Text text3Xl() =>
      _copyWith(style: (style ?? const TextStyle()).copyWith(fontSize: 30));
  Text text4Xl() =>
      _copyWith(style: (style ?? const TextStyle()).copyWith(fontSize: 36));
  Text text5Xl() =>
      _copyWith(style: (style ?? const TextStyle()).copyWith(fontSize: 48));
  Text text6Xl() =>
      _copyWith(style: (style ?? const TextStyle()).copyWith(fontSize: 60));
  Text text7Xl() =>
      _copyWith(style: (style ?? const TextStyle()).copyWith(fontSize: 72));
  Text text8Xl() =>
      _copyWith(style: (style ?? const TextStyle()).copyWith(fontSize: 96));
  Text text9Xl() =>
      _copyWith(style: (style ?? const TextStyle()).copyWith(fontSize: 128));

  // ==================== FONT WEIGHTS ====================
  Text fontThin() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(fontWeight: FontWeight.w100),
  );
  Text fontExtralight() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(fontWeight: FontWeight.w200),
  );
  Text fontLight() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(fontWeight: FontWeight.w300),
  );
  Text fontNormal() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(fontWeight: FontWeight.w400),
  );
  Text fontMedium() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(fontWeight: FontWeight.w500),
  );
  Text fontSemibold() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(fontWeight: FontWeight.w600),
  );
  Text fontBold() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(fontWeight: FontWeight.w700),
  );
  Text fontExtrabold() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(fontWeight: FontWeight.w800),
  );
  Text fontBlack() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(fontWeight: FontWeight.w900),
  );

  // ==================== TEXT ALIGNMENT ====================
  Text textLeft() => _copyWith(textAlign: TextAlign.left);
  Text textCenter() => _copyWith(textAlign: TextAlign.center);
  Text textRight() => _copyWith(textAlign: TextAlign.right);
  Text textJustify() => _copyWith(textAlign: TextAlign.justify);

  // ==================== TEXT DECORATION ====================
  Text underline() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(
      decoration: TextDecoration.underline,
    ),
  );
  Text lineThrough() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(
      decoration: TextDecoration.lineThrough,
    ),
  );
  Text overline() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(
      decoration: TextDecoration.overline,
    ),
  );
  Text noUnderline() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(
      decoration: TextDecoration.none,
    ),
  );

  // ==================== FONT STYLE ====================
  Text italic() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(fontStyle: FontStyle.italic),
  );
  Text notItalic() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(fontStyle: FontStyle.normal),
  );

  // ==================== LETTER SPACING ====================
  Text trackingTighter() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(letterSpacing: -0.8),
  );
  Text trackingTight() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(letterSpacing: -0.4),
  );
  Text trackingNormal() =>
      _copyWith(style: (style ?? const TextStyle()).copyWith(letterSpacing: 0));
  Text trackingWide() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(letterSpacing: 0.4),
  );
  Text trackingWider() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(letterSpacing: 0.8),
  );
  Text trackingWidest() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(letterSpacing: 1.6),
  );

  // ==================== LINE HEIGHT ====================
  Text leadingNone() =>
      _copyWith(style: (style ?? const TextStyle()).copyWith(height: 1.0));
  Text leadingTight() =>
      _copyWith(style: (style ?? const TextStyle()).copyWith(height: 1.25));
  Text leadingSnug() =>
      _copyWith(style: (style ?? const TextStyle()).copyWith(height: 1.375));
  Text leadingNormal() =>
      _copyWith(style: (style ?? const TextStyle()).copyWith(height: 1.5));
  Text leadingRelaxed() =>
      _copyWith(style: (style ?? const TextStyle()).copyWith(height: 1.625));
  Text leadingLoose() =>
      _copyWith(style: (style ?? const TextStyle()).copyWith(height: 2.0));

  // ==================== TEXT OVERFLOW ====================
  Text ellipsis() => _copyWith(overflow: TextOverflow.ellipsis);
  Text clip() => _copyWith(overflow: TextOverflow.clip);
  Text fade() => _copyWith(overflow: TextOverflow.fade);
  Text visible() => _copyWith(overflow: TextOverflow.visible);

  // ==================== MAX LINES ====================
  Text maxLines1() => _copyWith(maxLines: 1);
  Text maxLines2() => _copyWith(maxLines: 2);
  Text maxLines3() => _copyWith(maxLines: 3);
  Text maxLines4() => _copyWith(maxLines: 4);
  Text maxLines5() => _copyWith(maxLines: 5);
  Text maxLinesNone() => _copyWith(maxLines: null);

  // ==================== TEXT SHADOW ====================
  Text textShadowSm() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(
      shadows: [
        const Shadow(
          offset: Offset(0, 1),
          blurRadius: 2,
          color: Color(0x40000000),
        ),
      ],
    ),
  );

  Text textShadowMd() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(
      shadows: [
        const Shadow(
          offset: Offset(0, 2),
          blurRadius: 4,
          color: Color(0x40000000),
        ),
      ],
    ),
  );

  Text textShadowLg() => _copyWith(
    style: (style ?? const TextStyle()).copyWith(
      shadows: [
        const Shadow(
          offset: Offset(0, 4),
          blurRadius: 8,
          color: Color(0x40000000),
        ),
      ],
    ),
  );

  Text textShadowNone() =>
      _copyWith(style: (style ?? const TextStyle()).copyWith(shadows: []));
}
