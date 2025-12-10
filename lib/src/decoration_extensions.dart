import 'package:flutter/material.dart';

/// Tailwind CSS-inspired decoration utilities for Flutter
/// Provides border radius, borders, shadows, and opacity
extension DecorationExtensions on Widget {
  // ==================== BORDER RADIUS ====================
  Widget roundedNone() =>
      ClipRRect(borderRadius: BorderRadius.circular(0), child: this);
  Widget roundedSm() =>
      ClipRRect(borderRadius: BorderRadius.circular(2), child: this);
  Widget rounded() =>
      ClipRRect(borderRadius: BorderRadius.circular(4), child: this);
  Widget roundedMd() =>
      ClipRRect(borderRadius: BorderRadius.circular(6), child: this);
  Widget roundedLg() =>
      ClipRRect(borderRadius: BorderRadius.circular(8), child: this);
  Widget roundedXl() =>
      ClipRRect(borderRadius: BorderRadius.circular(12), child: this);
  Widget rounded2Xl() =>
      ClipRRect(borderRadius: BorderRadius.circular(16), child: this);
  Widget rounded3Xl() =>
      ClipRRect(borderRadius: BorderRadius.circular(24), child: this);
  Widget roundedFull() =>
      ClipRRect(borderRadius: BorderRadius.circular(9999), child: this);

  // ==================== BORDER RADIUS - CORNERS ====================
  Widget roundedT() => ClipRRect(
    borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(4),
      topRight: Radius.circular(4),
    ),
    child: this,
  );
  Widget roundedB() => ClipRRect(
    borderRadius: const BorderRadius.only(
      bottomLeft: Radius.circular(4),
      bottomRight: Radius.circular(4),
    ),
    child: this,
  );
  Widget roundedL() => ClipRRect(
    borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(4),
      bottomLeft: Radius.circular(4),
    ),
    child: this,
  );
  Widget roundedR() => ClipRRect(
    borderRadius: const BorderRadius.only(
      topRight: Radius.circular(4),
      bottomRight: Radius.circular(4),
    ),
    child: this,
  );

  // ==================== BORDER ====================
  Widget border() => Container(
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade300, width: 1),
    ),
    child: this,
  );
  Widget border2() => Container(
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade300, width: 2),
    ),
    child: this,
  );
  Widget border4() => Container(
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade300, width: 4),
    ),
    child: this,
  );

  // ==================== BORDER SIDES ====================
  Widget borderT() => Container(
    decoration: BoxDecoration(
      border: Border(top: BorderSide(color: Colors.grey.shade300, width: 1)),
    ),
    child: this,
  );
  Widget borderB() => Container(
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(color: Colors.grey.shade300, width: 1)),
    ),
    child: this,
  );
  Widget borderL() => Container(
    decoration: BoxDecoration(
      border: Border(left: BorderSide(color: Colors.grey.shade300, width: 1)),
    ),
    child: this,
  );
  Widget borderR() => Container(
    decoration: BoxDecoration(
      border: Border(right: BorderSide(color: Colors.grey.shade300, width: 1)),
    ),
    child: this,
  );

  // ==================== BORDER COLORS ====================
  Widget borderBlue600() => Container(
    decoration: BoxDecoration(
      border: Border.all(color: Colors.blue.shade600, width: 1),
    ),
    child: this,
  );
  Widget borderRed600() => Container(
    decoration: BoxDecoration(
      border: Border.all(color: Colors.red.shade600, width: 1),
    ),
    child: this,
  );
  Widget borderGreen600() => Container(
    decoration: BoxDecoration(
      border: Border.all(color: Colors.green.shade600, width: 1),
    ),
    child: this,
  );
  Widget borderGray300() => Container(
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade300, width: 1),
    ),
    child: this,
  );

  // ==================== BOX SHADOW ====================
  Widget shadowSm() => Container(
    decoration: const BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0x0D000000),
          offset: Offset(0, 1),
          blurRadius: 2,
        ),
      ],
    ),
    child: this,
  );
  Widget shadow() => Container(
    decoration: const BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0x1A000000),
          offset: Offset(0, 1),
          blurRadius: 3,
        ),
      ],
    ),
    child: this,
  );
  Widget shadowMd() => Container(
    decoration: const BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0x1A000000),
          offset: Offset(0, 4),
          blurRadius: 6,
          spreadRadius: -1,
        ),
      ],
    ),
    child: this,
  );
  Widget shadowLg() => Container(
    decoration: const BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0x1A000000),
          offset: Offset(0, 10),
          blurRadius: 15,
          spreadRadius: -3,
        ),
      ],
    ),
    child: this,
  );
  Widget shadowXl() => Container(
    decoration: const BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0x1A000000),
          offset: Offset(0, 20),
          blurRadius: 25,
          spreadRadius: -5,
        ),
      ],
    ),
    child: this,
  );
  Widget shadowNone() => this;

  // ==================== OPACITY ====================
  Widget opacity0() => Opacity(opacity: 0, child: this);
  Widget opacity10() => Opacity(opacity: 0.10, child: this);
  Widget opacity25() => Opacity(opacity: 0.25, child: this);
  Widget opacity50() => Opacity(opacity: 0.50, child: this);
  Widget opacity75() => Opacity(opacity: 0.75, child: this);
  Widget opacity100() => Opacity(opacity: 1.0, child: this);
}
