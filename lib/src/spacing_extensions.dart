import 'package:flutter/widgets.dart';

/// Tailwind CSS-inspired spacing utilities for Flutter.
///
/// Provides padding and margin extensions following Tailwind's scale.
/// Values follow the pattern: p/m + direction + scale number.
///
/// Scale reference:
/// - 1 = 4px, 2 = 8px, 3 = 12px, 4 = 16px, 5 = 20px, 6 = 24px, 8 = 32px, etc.
///
/// Example:
/// ```dart
/// Container().p4()   // Padding 16px all sides
/// Container().mx2()  // Margin 8px horizontal
/// Text('Hi').pt6()   // Padding top 24px
/// ```
extension SpacingExtensions on Widget {
  // ==================== PADDING - ALL SIDES ====================

  /// Padding: 0px on all sides.
  Widget p0() => Padding(padding: const EdgeInsets.all(0), child: this);

  /// Padding: 4px on all sides.
  Widget p1() => Padding(padding: const EdgeInsets.all(4), child: this);

  /// Padding: 8px on all sides.
  Widget p2() => Padding(padding: const EdgeInsets.all(8), child: this);

  /// Padding: 12px on all sides.
  Widget p3() => Padding(padding: const EdgeInsets.all(12), child: this);

  /// Padding: 16px on all sides.
  Widget p4() => Padding(padding: const EdgeInsets.all(16), child: this);

  /// Padding: 20px on all sides.
  Widget p5() => Padding(padding: const EdgeInsets.all(20), child: this);

  /// Padding: 24px on all sides.
  Widget p6() => Padding(padding: const EdgeInsets.all(24), child: this);

  /// Padding: 32px on all sides.
  Widget p8() => Padding(padding: const EdgeInsets.all(32), child: this);

  /// Padding: 40px on all sides.
  Widget p10() => Padding(padding: const EdgeInsets.all(40), child: this);

  /// Padding: 48px on all sides.
  Widget p12() => Padding(padding: const EdgeInsets.all(48), child: this);

  /// Padding: 64px on all sides.
  Widget p16() => Padding(padding: const EdgeInsets.all(64), child: this);

  /// Padding: 80px on all sides.
  Widget p20() => Padding(padding: const EdgeInsets.all(80), child: this);

  /// Padding: 96px on all sides.
  Widget p24() => Padding(padding: const EdgeInsets.all(96), child: this);

  // ==================== PADDING - HORIZONTAL ====================

  /// Horizontal padding: 0px.
  Widget px0() =>
      Padding(padding: const EdgeInsets.symmetric(horizontal: 0), child: this);

  /// Horizontal padding: 4px.
  Widget px1() =>
      Padding(padding: const EdgeInsets.symmetric(horizontal: 4), child: this);

  /// Horizontal padding: 8px.
  Widget px2() =>
      Padding(padding: const EdgeInsets.symmetric(horizontal: 8), child: this);

  /// Horizontal padding: 12px.
  Widget px3() =>
      Padding(padding: const EdgeInsets.symmetric(horizontal: 12), child: this);

  /// Horizontal padding: 16px.
  Widget px4() =>
      Padding(padding: const EdgeInsets.symmetric(horizontal: 16), child: this);

  /// Horizontal padding: 20px.
  Widget px5() =>
      Padding(padding: const EdgeInsets.symmetric(horizontal: 20), child: this);

  /// Horizontal padding: 24px.
  Widget px6() =>
      Padding(padding: const EdgeInsets.symmetric(horizontal: 24), child: this);

  /// Horizontal padding: 32px.
  Widget px8() =>
      Padding(padding: const EdgeInsets.symmetric(horizontal: 32), child: this);

  /// Horizontal padding: 40px.
  Widget px10() =>
      Padding(padding: const EdgeInsets.symmetric(horizontal: 40), child: this);

  /// Horizontal padding: 48px.
  Widget px12() =>
      Padding(padding: const EdgeInsets.symmetric(horizontal: 48), child: this);

  // ==================== PADDING - VERTICAL ====================

  /// Vertical padding: 0px.
  Widget py0() =>
      Padding(padding: const EdgeInsets.symmetric(vertical: 0), child: this);

  /// Vertical padding: 4px.
  Widget py1() =>
      Padding(padding: const EdgeInsets.symmetric(vertical: 4), child: this);

  /// Vertical padding: 8px.
  Widget py2() =>
      Padding(padding: const EdgeInsets.symmetric(vertical: 8), child: this);

  /// Vertical padding: 12px.
  Widget py3() =>
      Padding(padding: const EdgeInsets.symmetric(vertical: 12), child: this);

  /// Vertical padding: 16px.
  Widget py4() =>
      Padding(padding: const EdgeInsets.symmetric(vertical: 16), child: this);

  /// Vertical padding: 20px.
  Widget py5() =>
      Padding(padding: const EdgeInsets.symmetric(vertical: 20), child: this);

  /// Vertical padding: 24px.
  Widget py6() =>
      Padding(padding: const EdgeInsets.symmetric(vertical: 24), child: this);

  /// Vertical padding: 32px.
  Widget py8() =>
      Padding(padding: const EdgeInsets.symmetric(vertical: 32), child: this);

  /// Vertical padding: 40px.
  Widget py10() =>
      Padding(padding: const EdgeInsets.symmetric(vertical: 40), child: this);

  /// Vertical padding: 48px.
  Widget py12() =>
      Padding(padding: const EdgeInsets.symmetric(vertical: 48), child: this);

  // ==================== PADDING - INDIVIDUAL SIDES ====================

  /// Padding top: 4px.
  Widget pt1() => Padding(padding: const EdgeInsets.only(top: 4), child: this);

  /// Padding top: 8px.
  Widget pt2() => Padding(padding: const EdgeInsets.only(top: 8), child: this);

  /// Padding top: 16px.
  Widget pt4() => Padding(padding: const EdgeInsets.only(top: 16), child: this);

  /// Padding top: 24px.
  Widget pt6() => Padding(padding: const EdgeInsets.only(top: 24), child: this);

  /// Padding top: 32px.
  Widget pt8() => Padding(padding: const EdgeInsets.only(top: 32), child: this);

  /// Padding right: 4px.
  Widget pr1() =>
      Padding(padding: const EdgeInsets.only(right: 4), child: this);

  /// Padding right: 8px.
  Widget pr2() =>
      Padding(padding: const EdgeInsets.only(right: 8), child: this);

  /// Padding right: 16px.
  Widget pr4() =>
      Padding(padding: const EdgeInsets.only(right: 16), child: this);

  /// Padding right: 24px.
  Widget pr6() =>
      Padding(padding: const EdgeInsets.only(right: 24), child: this);

  /// Padding right: 32px.
  Widget pr8() =>
      Padding(padding: const EdgeInsets.only(right: 32), child: this);

  /// Padding bottom: 4px.
  Widget pb1() =>
      Padding(padding: const EdgeInsets.only(bottom: 4), child: this);

  /// Padding bottom: 8px.
  Widget pb2() =>
      Padding(padding: const EdgeInsets.only(bottom: 8), child: this);

  /// Padding bottom: 16px.
  Widget pb4() =>
      Padding(padding: const EdgeInsets.only(bottom: 16), child: this);

  /// Padding bottom: 24px.
  Widget pb6() =>
      Padding(padding: const EdgeInsets.only(bottom: 24), child: this);

  /// Padding bottom: 32px.
  Widget pb8() =>
      Padding(padding: const EdgeInsets.only(bottom: 32), child: this);

  /// Padding left: 4px.
  Widget pl1() => Padding(padding: const EdgeInsets.only(left: 4), child: this);

  /// Padding left: 8px.
  Widget pl2() => Padding(padding: const EdgeInsets.only(left: 8), child: this);

  /// Padding left: 16px.
  Widget pl4() =>
      Padding(padding: const EdgeInsets.only(left: 16), child: this);

  /// Padding left: 24px.
  Widget pl6() =>
      Padding(padding: const EdgeInsets.only(left: 24), child: this);

  /// Padding left: 32px.
  Widget pl8() =>
      Padding(padding: const EdgeInsets.only(left: 32), child: this);

  // ==================== MARGIN - ALL SIDES ====================

  /// Margin: 0px on all sides.
  Widget m0() => Container(margin: const EdgeInsets.all(0), child: this);

  /// Margin: 4px on all sides.
  Widget m1() => Container(margin: const EdgeInsets.all(4), child: this);

  /// Margin: 8px on all sides.
  Widget m2() => Container(margin: const EdgeInsets.all(8), child: this);

  /// Margin: 12px on all sides.
  Widget m3() => Container(margin: const EdgeInsets.all(12), child: this);

  /// Margin: 16px on all sides.
  Widget m4() => Container(margin: const EdgeInsets.all(16), child: this);

  /// Margin: 20px on all sides.
  Widget m5() => Container(margin: const EdgeInsets.all(20), child: this);

  /// Margin: 24px on all sides.
  Widget m6() => Container(margin: const EdgeInsets.all(24), child: this);

  /// Margin: 32px on all sides.
  Widget m8() => Container(margin: const EdgeInsets.all(32), child: this);

  /// Margin: 40px on all sides.
  Widget m10() => Container(margin: const EdgeInsets.all(40), child: this);

  /// Margin: 48px on all sides.
  Widget m12() => Container(margin: const EdgeInsets.all(48), child: this);

  // ==================== MARGIN - HORIZONTAL ====================

  /// Horizontal margin: 4px.
  Widget mx1() =>
      Container(margin: const EdgeInsets.symmetric(horizontal: 4), child: this);

  /// Horizontal margin: 8px.
  Widget mx2() =>
      Container(margin: const EdgeInsets.symmetric(horizontal: 8), child: this);

  /// Horizontal margin: 12px.
  Widget mx3() => Container(
    margin: const EdgeInsets.symmetric(horizontal: 12),
    child: this,
  );

  /// Horizontal margin: 16px.
  Widget mx4() => Container(
    margin: const EdgeInsets.symmetric(horizontal: 16),
    child: this,
  );

  /// Horizontal margin: 24px.
  Widget mx6() => Container(
    margin: const EdgeInsets.symmetric(horizontal: 24),
    child: this,
  );

  /// Horizontal margin: 32px.
  Widget mx8() => Container(
    margin: const EdgeInsets.symmetric(horizontal: 32),
    child: this,
  );

  /// Centers widget horizontally using auto margins.
  Widget mxAuto() => Center(child: this);

  // ==================== MARGIN - VERTICAL ====================

  /// Vertical margin: 4px.
  Widget my1() =>
      Container(margin: const EdgeInsets.symmetric(vertical: 4), child: this);

  /// Vertical margin: 8px.
  Widget my2() =>
      Container(margin: const EdgeInsets.symmetric(vertical: 8), child: this);

  /// Vertical margin: 12px.
  Widget my3() =>
      Container(margin: const EdgeInsets.symmetric(vertical: 12), child: this);

  /// Vertical margin: 16px.
  Widget my4() =>
      Container(margin: const EdgeInsets.symmetric(vertical: 16), child: this);

  /// Vertical margin: 24px.
  Widget my6() =>
      Container(margin: const EdgeInsets.symmetric(vertical: 24), child: this);

  /// Vertical margin: 32px.
  Widget my8() =>
      Container(margin: const EdgeInsets.symmetric(vertical: 32), child: this);

  // ==================== MARGIN - INDIVIDUAL SIDES ====================

  /// Margin top: 4px.
  Widget mt1() => Container(margin: const EdgeInsets.only(top: 4), child: this);

  /// Margin top: 8px.
  Widget mt2() => Container(margin: const EdgeInsets.only(top: 8), child: this);

  /// Margin top: 16px.
  Widget mt4() =>
      Container(margin: const EdgeInsets.only(top: 16), child: this);

  /// Margin top: 24px.
  Widget mt6() =>
      Container(margin: const EdgeInsets.only(top: 24), child: this);

  /// Margin bottom: 4px.
  Widget mb1() =>
      Container(margin: const EdgeInsets.only(bottom: 4), child: this);

  /// Margin bottom: 8px.
  Widget mb2() =>
      Container(margin: const EdgeInsets.only(bottom: 8), child: this);

  /// Margin bottom: 16px.
  Widget mb4() =>
      Container(margin: const EdgeInsets.only(bottom: 16), child: this);

  /// Margin bottom: 24px.
  Widget mb6() =>
      Container(margin: const EdgeInsets.only(bottom: 24), child: this);

  /// Margin left: 4px.
  Widget ml1() =>
      Container(margin: const EdgeInsets.only(left: 4), child: this);

  /// Margin left: 8px.
  Widget ml2() =>
      Container(margin: const EdgeInsets.only(left: 8), child: this);

  /// Margin left: 16px.
  Widget ml4() =>
      Container(margin: const EdgeInsets.only(left: 16), child: this);

  /// Margin right: 4px.
  Widget mr1() =>
      Container(margin: const EdgeInsets.only(right: 4), child: this);

  /// Margin right: 8px.
  Widget mr2() =>
      Container(margin: const EdgeInsets.only(right: 8), child: this);

  /// Margin right: 16px.
  Widget mr4() =>
      Container(margin: const EdgeInsets.only(right: 16), child: this);
}
