import 'package:flutter/widgets.dart';

/// Tailwind CSS-inspired spacing utilities for Flutter
/// Provides padding and margin extensions following Tailwind's scale
extension SpacingExtensions on Widget {
  // ==================== PADDING - ALL SIDES ====================

  /// Padding: 0px on all sides
  Widget p0() => Padding(padding: const EdgeInsets.all(0), child: this);

  /// Padding: 4px on all sides
  Widget p1() => Padding(padding: const EdgeInsets.all(4), child: this);

  /// Padding: 8px on all sides
  Widget p2() => Padding(padding: const EdgeInsets.all(8), child: this);

  /// Padding: 12px on all sides
  Widget p3() => Padding(padding: const EdgeInsets.all(12), child: this);

  /// Padding: 16px on all sides
  Widget p4() => Padding(padding: const EdgeInsets.all(16), child: this);

  /// Padding: 20px on all sides
  Widget p5() => Padding(padding: const EdgeInsets.all(20), child: this);

  /// Padding: 24px on all sides
  Widget p6() => Padding(padding: const EdgeInsets.all(24), child: this);

  /// Padding: 32px on all sides
  Widget p8() => Padding(padding: const EdgeInsets.all(32), child: this);

  /// Padding: 40px on all sides
  Widget p10() => Padding(padding: const EdgeInsets.all(40), child: this);

  /// Padding: 48px on all sides
  Widget p12() => Padding(padding: const EdgeInsets.all(48), child: this);

  /// Padding: 64px on all sides
  Widget p16() => Padding(padding: const EdgeInsets.all(64), child: this);

  /// Padding: 80px on all sides
  Widget p20() => Padding(padding: const EdgeInsets.all(80), child: this);

  /// Padding: 96px on all sides
  Widget p24() => Padding(padding: const EdgeInsets.all(96), child: this);

  // ==================== PADDING - HORIZONTAL ====================

  Widget px0() => Padding(padding: const EdgeInsets.symmetric(horizontal: 0), child: this);
  Widget px1() => Padding(padding: const EdgeInsets.symmetric(horizontal: 4), child: this);
  Widget px2() => Padding(padding: const EdgeInsets.symmetric(horizontal: 8), child: this);
  Widget px3() => Padding(padding: const EdgeInsets.symmetric(horizontal: 12), child: this);
  Widget px4() => Padding(padding: const EdgeInsets.symmetric(horizontal: 16), child: this);
  Widget px5() => Padding(padding: const EdgeInsets.symmetric(horizontal: 20), child: this);
  Widget px6() => Padding(padding: const EdgeInsets.symmetric(horizontal: 24), child: this);
  Widget px8() => Padding(padding: const EdgeInsets.symmetric(horizontal: 32), child: this);
  Widget px10() => Padding(padding: const EdgeInsets.symmetric(horizontal: 40), child: this);
  Widget px12() => Padding(padding: const EdgeInsets.symmetric(horizontal: 48), child: this);

  // ==================== PADDING - VERTICAL ====================

  Widget py0() => Padding(padding: const EdgeInsets.symmetric(vertical: 0), child: this);
  Widget py1() => Padding(padding: const EdgeInsets.symmetric(vertical: 4), child: this);
  Widget py2() => Padding(padding: const EdgeInsets.symmetric(vertical: 8), child: this);
  Widget py3() => Padding(padding: const EdgeInsets.symmetric(vertical: 12), child: this);
  Widget py4() => Padding(padding: const EdgeInsets.symmetric(vertical: 16), child: this);
  Widget py5() => Padding(padding: const EdgeInsets.symmetric(vertical: 20), child: this);
  Widget py6() => Padding(padding: const EdgeInsets.symmetric(vertical: 24), child: this);
  Widget py8() => Padding(padding: const EdgeInsets.symmetric(vertical: 32), child: this);
  Widget py10() => Padding(padding: const EdgeInsets.symmetric(vertical: 40), child: this);
  Widget py12() => Padding(padding: const EdgeInsets.symmetric(vertical: 48), child: this);

  // ==================== PADDING - INDIVIDUAL SIDES ====================

  Widget pt1() => Padding(padding: const EdgeInsets.only(top: 4), child: this);
  Widget pt2() => Padding(padding: const EdgeInsets.only(top: 8), child: this);
  Widget pt4() => Padding(padding: const EdgeInsets.only(top: 16), child: this);
  Widget pt6() => Padding(padding: const EdgeInsets.only(top: 24), child: this);
  Widget pt8() => Padding(padding: const EdgeInsets.only(top: 32), child: this);

  Widget pr1() => Padding(padding: const EdgeInsets.only(right: 4), child: this);
  Widget pr2() => Padding(padding: const EdgeInsets.only(right: 8), child: this);
  Widget pr4() => Padding(padding: const EdgeInsets.only(right: 16), child: this);
  Widget pr6() => Padding(padding: const EdgeInsets.only(right: 24), child: this);
  Widget pr8() => Padding(padding: const EdgeInsets.only(right: 32), child: this);

  Widget pb1() => Padding(padding: const EdgeInsets.only(bottom: 4), child: this);
  Widget pb2() => Padding(padding: const EdgeInsets.only(bottom: 8), child: this);
  Widget pb4() => Padding(padding: const EdgeInsets.only(bottom: 16), child: this);
  Widget pb6() => Padding(padding: const EdgeInsets.only(bottom: 24), child: this);
  Widget pb8() => Padding(padding: const EdgeInsets.only(bottom: 32), child: this);

  Widget pl1() => Padding(padding: const EdgeInsets.only(left: 4), child: this);
  Widget pl2() => Padding(padding: const EdgeInsets.only(left: 8), child: this);
  Widget pl4() => Padding(padding: const EdgeInsets.only(left: 16), child: this);
  Widget pl6() => Padding(padding: const EdgeInsets.only(left: 24), child: this);
  Widget pl8() => Padding(padding: const EdgeInsets.only(left: 32), child: this);

  // ==================== MARGIN - ALL SIDES ====================

  Widget m0() => Container(margin: const EdgeInsets.all(0), child: this);
  Widget m1() => Container(margin: const EdgeInsets.all(4), child: this);
  Widget m2() => Container(margin: const EdgeInsets.all(8), child: this);
  Widget m3() => Container(margin: const EdgeInsets.all(12), child: this);
  Widget m4() => Container(margin: const EdgeInsets.all(16), child: this);
  Widget m5() => Container(margin: const EdgeInsets.all(20), child: this);
  Widget m6() => Container(margin: const EdgeInsets.all(24), child: this);
  Widget m8() => Container(margin: const EdgeInsets.all(32), child: this);
  Widget m10() => Container(margin: const EdgeInsets.all(40), child: this);
  Widget m12() => Container(margin: const EdgeInsets.all(48), child: this);

  // ==================== MARGIN - HORIZONTAL ====================

  Widget mx1() => Container(margin: const EdgeInsets.symmetric(horizontal: 4), child: this);
  Widget mx2() => Container(margin: const EdgeInsets.symmetric(horizontal: 8), child: this);
  Widget mx3() => Container(margin: const EdgeInsets.symmetric(horizontal: 12), child: this);
  Widget mx4() => Container(margin: const EdgeInsets.symmetric(horizontal: 16), child: this);
  Widget mx6() => Container(margin: const EdgeInsets.symmetric(horizontal: 24), child: this);
  Widget mx8() => Container(margin: const EdgeInsets.symmetric(horizontal: 32), child: this);
  Widget mxAuto() => Center(child: this);

  // ==================== MARGIN - VERTICAL ====================

  Widget my1() => Container(margin: const EdgeInsets.symmetric(vertical: 4), child: this);
  Widget my2() => Container(margin: const EdgeInsets.symmetric(vertical: 8), child: this);
  Widget my3() => Container(margin: const EdgeInsets.symmetric(vertical: 12), child: this);
  Widget my4() => Container(margin: const EdgeInsets.symmetric(vertical: 16), child: this);
  Widget my6() => Container(margin: const EdgeInsets.symmetric(vertical: 24), child: this);
  Widget my8() => Container(margin: const EdgeInsets.symmetric(vertical: 32), child: this);

  // ==================== MARGIN - INDIVIDUAL SIDES ====================

  Widget mt1() => Container(margin: const EdgeInsets.only(top: 4), child: this);
  Widget mt2() => Container(margin: const EdgeInsets.only(top: 8), child: this);
  Widget mt4() => Container(margin: const EdgeInsets.only(top: 16), child: this);
  Widget mt6() => Container(margin: const EdgeInsets.only(top: 24), child: this);

  Widget mb1() => Container(margin: const EdgeInsets.only(bottom: 4), child: this);
  Widget mb2() => Container(margin: const EdgeInsets.only(bottom: 8), child: this);
  Widget mb4() => Container(margin: const EdgeInsets.only(bottom: 16), child: this);
  Widget mb6() => Container(margin: const EdgeInsets.only(bottom: 24), child: this);

  Widget ml1() => Container(margin: const EdgeInsets.only(left: 4), child: this);
  Widget ml2() => Container(margin: const EdgeInsets.only(left: 8), child: this);
  Widget ml4() => Container(margin: const EdgeInsets.only(left: 16), child: this);

  Widget mr1() => Container(margin: const EdgeInsets.only(right: 4), child: this);
  Widget mr2() => Container(margin: const EdgeInsets.only(right: 8), child: this);
  Widget mr4() => Container(margin: const EdgeInsets.only(right: 16), child: this);
}
