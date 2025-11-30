import 'dart:math' as math;
import 'package:flutter/widgets.dart';

/// Tailwind CSS-inspired transform utilities for Flutter
/// Provides rotation, scaling, translation, and flip utilities
extension TransformExtensions on Widget {
  // ==================== ROTATE ====================
  Widget rotate45() => Transform.rotate(angle: math.pi / 4, child: this);
  Widget rotate90() => Transform.rotate(angle: math.pi / 2, child: this);
  Widget rotate180() => Transform.rotate(angle: math.pi, child: this);
  Widget rotate(double degrees) => Transform.rotate(angle: degrees * (math.pi / 180), child: this);

  // ==================== SCALE ====================
  Widget scale0() => Transform.scale(scale: 0, child: this);
  Widget scale50() => Transform.scale(scale: 0.5, child: this);
  Widget scale75() => Transform.scale(scale: 0.75, child: this);
  Widget scale90() => Transform.scale(scale: 0.9, child: this);
  Widget scale95() => Transform.scale(scale: 0.95, child: this);
  Widget scale100() => Transform.scale(scale: 1.0, child: this);
  Widget scale105() => Transform.scale(scale: 1.05, child: this);
  Widget scale110() => Transform.scale(scale: 1.10, child: this);
  Widget scale125() => Transform.scale(scale: 1.25, child: this);
  Widget scale150() => Transform.scale(scale: 1.5, child: this);
  Widget scale(double scale) => Transform.scale(scale: scale, child: this);

  // ==================== TRANSLATE ====================
  Widget translate({double x = 0, double y = 0}) => Transform.translate(offset: Offset(x, y), child: this);

  // ==================== FLIP ====================
  Widget flipH() => Transform(
        alignment: Alignment.center,
        transform: Matrix4.identity()..setEntry(0, 0, -1.0),
        child: this,
      );

  Widget flipV() => Transform(
        alignment: Alignment.center,
        transform: Matrix4.identity()..setEntry(1, 1, -1.0),
        child: this,
      );
}
