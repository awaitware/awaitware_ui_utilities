import 'package:flutter/widgets.dart';

/// Tailwind CSS-inspired layout utilities for Flutter
/// Provides alignment, expansion, aspect ratio, and scrolling
extension LayoutExtensions on Widget {
  // ==================== ALIGNMENT ====================
  Widget center() => Center(child: this);
  Widget alignTopLeft() => Align(alignment: Alignment.topLeft, child: this);
  Widget alignTopCenter() => Align(alignment: Alignment.topCenter, child: this);
  Widget alignTopRight() => Align(alignment: Alignment.topRight, child: this);
  Widget alignCenterLeft() =>
      Align(alignment: Alignment.centerLeft, child: this);
  Widget alignCenter() => Align(alignment: Alignment.center, child: this);
  Widget alignCenterRight() =>
      Align(alignment: Alignment.centerRight, child: this);
  Widget alignBottomLeft() =>
      Align(alignment: Alignment.bottomLeft, child: this);
  Widget alignBottomCenter() =>
      Align(alignment: Alignment.bottomCenter, child: this);
  Widget alignBottomRight() =>
      Align(alignment: Alignment.bottomRight, child: this);

  // ==================== EXPANDED & FLEXIBLE ====================
  Widget expanded({int flex = 1}) => Expanded(flex: flex, child: this);
  Widget flexible({int flex = 1, FlexFit fit = FlexFit.loose}) =>
      Flexible(flex: flex, fit: fit, child: this);

  // ==================== ASPECT RATIO ====================
  Widget aspectSquare() => AspectRatio(aspectRatio: 1.0, child: this);
  Widget aspectVideo() => AspectRatio(aspectRatio: 16 / 9, child: this);
  Widget aspect4x3() => AspectRatio(aspectRatio: 4 / 3, child: this);

  // ==================== FIT ====================
  Widget fitContain() => FittedBox(fit: BoxFit.contain, child: this);
  Widget fitCover() => FittedBox(fit: BoxFit.cover, child: this);
  Widget fitFill() => FittedBox(fit: BoxFit.fill, child: this);
  Widget fitWidth() => FittedBox(fit: BoxFit.fitWidth, child: this);
  Widget fitHeight() => FittedBox(fit: BoxFit.fitHeight, child: this);

  // ==================== SAFE AREA ====================
  Widget safeArea() => SafeArea(child: this);
  Widget safeAreaTop() => SafeArea(
    top: true,
    bottom: false,
    left: false,
    right: false,
    child: this,
  );
  Widget safeAreaBottom() => SafeArea(
    top: false,
    bottom: true,
    left: false,
    right: false,
    child: this,
  );

  // ==================== SCROLL ====================
  Widget scrollable() => SingleChildScrollView(child: this);
  Widget scrollableH() =>
      SingleChildScrollView(scrollDirection: Axis.horizontal, child: this);

  // ==================== INTRINSIC ====================
  Widget intrinsicWidth() => IntrinsicWidth(child: this);
  Widget intrinsicHeight() => IntrinsicHeight(child: this);
}
