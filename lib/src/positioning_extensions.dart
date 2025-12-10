import 'package:flutter/widgets.dart';

/// Tailwind CSS-inspired positioning utilities for Flutter
/// Provides absolute and relative positioning for Stack children
extension PositioningExtensions on Widget {
  // ==================== POSITIONED ====================
  Widget absolute({double? top, double? right, double? bottom, double? left}) =>
      Positioned(
        top: top,
        right: right,
        bottom: bottom,
        left: left,
        child: this,
      );

  Widget top0() => Positioned(top: 0, child: this);
  Widget right0() => Positioned(right: 0, child: this);
  Widget bottom0() => Positioned(bottom: 0, child: this);
  Widget left0() => Positioned(left: 0, child: this);
  Widget positionFill() => Positioned.fill(child: this);
}
