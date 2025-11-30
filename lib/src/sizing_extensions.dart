import 'package:flutter/widgets.dart';

/// Tailwind CSS-inspired sizing utilities for Flutter
/// Provides width, height, and size constraints
extension SizingExtensions on Widget {
  // ==================== WIDTH - FIXED ====================
  Widget w0() => SizedBox(width: 0, child: this);
  Widget w1() => SizedBox(width: 4, child: this);
  Widget w2() => SizedBox(width: 8, child: this);
  Widget w3() => SizedBox(width: 12, child: this);
  Widget w4() => SizedBox(width: 16, child: this);
  Widget w5() => SizedBox(width: 20, child: this);
  Widget w6() => SizedBox(width: 24, child: this);
  Widget w8() => SizedBox(width: 32, child: this);
  Widget w10() => SizedBox(width: 40, child: this);
  Widget w12() => SizedBox(width: 48, child: this);
  Widget w16() => SizedBox(width: 64, child: this);
  Widget w20() => SizedBox(width: 80, child: this);
  Widget w24() => SizedBox(width: 96, child: this);
  Widget w32() => SizedBox(width: 128, child: this);
  Widget w40() => SizedBox(width: 160, child: this);
  Widget w48() => SizedBox(width: 192, child: this);
  Widget w56() => SizedBox(width: 224, child: this);
  Widget w64() => SizedBox(width: 256, child: this);
  Widget w80() => SizedBox(width: 320, child: this);
  Widget w96() => SizedBox(width: 384, child: this);

  // ==================== WIDTH - PERCENTAGES ====================
  Widget wFull() => SizedBox(width: double.infinity, child: this);
  Widget wHalf() => LayoutBuilder(
        builder: (context, constraints) => SizedBox(width: constraints.maxWidth * 0.5, child: this),
      );
  Widget wOneThird() => LayoutBuilder(
        builder: (context, constraints) => SizedBox(width: constraints.maxWidth * 0.3333, child: this),
      );
  Widget wTwoThirds() => LayoutBuilder(
        builder: (context, constraints) => SizedBox(width: constraints.maxWidth * 0.6666, child: this),
      );
  Widget wOneQuarter() => LayoutBuilder(
        builder: (context, constraints) => SizedBox(width: constraints.maxWidth * 0.25, child: this),
      );
  Widget wThreeQuarters() => LayoutBuilder(
        builder: (context, constraints) => SizedBox(width: constraints.maxWidth * 0.75, child: this),
      );
  Widget wAuto() => this;
  Widget wScreen() => LayoutBuilder(
        builder: (context, constraints) => SizedBox(width: MediaQuery.of(context).size.width, child: this),
      );

  // ==================== HEIGHT - FIXED ====================
  Widget h0() => SizedBox(height: 0, child: this);
  Widget h1() => SizedBox(height: 4, child: this);
  Widget h2() => SizedBox(height: 8, child: this);
  Widget h3() => SizedBox(height: 12, child: this);
  Widget h4() => SizedBox(height: 16, child: this);
  Widget h5() => SizedBox(height: 20, child: this);
  Widget h6() => SizedBox(height: 24, child: this);
  Widget h8() => SizedBox(height: 32, child: this);
  Widget h10() => SizedBox(height: 40, child: this);
  Widget h12() => SizedBox(height: 48, child: this);
  Widget h16() => SizedBox(height: 64, child: this);
  Widget h20() => SizedBox(height: 80, child: this);
  Widget h24() => SizedBox(height: 96, child: this);
  Widget h32() => SizedBox(height: 128, child: this);
  Widget h40() => SizedBox(height: 160, child: this);
  Widget h48() => SizedBox(height: 192, child: this);
  Widget h56() => SizedBox(height: 224, child: this);
  Widget h64() => SizedBox(height: 256, child: this);
  Widget h80() => SizedBox(height: 320, child: this);
  Widget h96() => SizedBox(height: 384, child: this);

  // ==================== HEIGHT - PERCENTAGES ====================
  Widget hFull() => SizedBox(height: double.infinity, child: this);
  Widget hHalf() => LayoutBuilder(
        builder: (context, constraints) => SizedBox(height: constraints.maxHeight * 0.5, child: this),
      );
  Widget hOneThird() => LayoutBuilder(
        builder: (context, constraints) => SizedBox(height: constraints.maxHeight * 0.3333, child: this),
      );
  Widget hTwoThirds() => LayoutBuilder(
        builder: (context, constraints) => SizedBox(height: constraints.maxHeight * 0.6666, child: this),
      );
  Widget hAuto() => this;
  Widget hScreen() => LayoutBuilder(
        builder: (context, constraints) => SizedBox(height: MediaQuery.of(context).size.height, child: this),
      );

  // ==================== MAX WIDTH ====================
  Widget maxWXs() => ConstrainedBox(constraints: const BoxConstraints(maxWidth: 320), child: this);
  Widget maxWSm() => ConstrainedBox(constraints: const BoxConstraints(maxWidth: 384), child: this);
  Widget maxWMd() => ConstrainedBox(constraints: const BoxConstraints(maxWidth: 448), child: this);
  Widget maxWLg() => ConstrainedBox(constraints: const BoxConstraints(maxWidth: 512), child: this);
  Widget maxWXl() => ConstrainedBox(constraints: const BoxConstraints(maxWidth: 576), child: this);
  Widget maxW2Xl() => ConstrainedBox(constraints: const BoxConstraints(maxWidth: 672), child: this);
  Widget maxW3Xl() => ConstrainedBox(constraints: const BoxConstraints(maxWidth: 768), child: this);
  Widget maxW4Xl() => ConstrainedBox(constraints: const BoxConstraints(maxWidth: 896), child: this);
  Widget maxW5Xl() => ConstrainedBox(constraints: const BoxConstraints(maxWidth: 1024), child: this);

  // ==================== SIZE (WIDTH + HEIGHT) ====================
  Widget size4() => SizedBox(width: 16, height: 16, child: this);
  Widget size8() => SizedBox(width: 32, height: 32, child: this);
  Widget size12() => SizedBox(width: 48, height: 48, child: this);
  Widget size16() => SizedBox(width: 64, height: 64, child: this);
  Widget size32() => SizedBox(width: 128, height: 128, child: this);
  Widget size64() => SizedBox(width: 256, height: 256, child: this);
  Widget sizeFull() => SizedBox(width: double.infinity, height: double.infinity, child: this);
}
