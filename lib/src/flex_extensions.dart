import 'package:flutter/widgets.dart';

/// Tailwind CSS-inspired flex utilities for Flutter
/// Provides Row, Column, Stack, Wrap, and gap utilities
extension FlexExtensions on List<Widget> {
  // ==================== ROW ====================
  Widget row({
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    MainAxisSize mainAxisSize = MainAxisSize.max,
  }) => Row(
    mainAxisAlignment: mainAxisAlignment,
    crossAxisAlignment: crossAxisAlignment,
    mainAxisSize: mainAxisSize,
    children: this,
  );

  Widget rowSpaceBetween() =>
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: this);
  Widget rowSpaceAround() =>
      Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: this);
  Widget rowSpaceEvenly() =>
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: this);
  Widget rowCenter() => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: this,
  );

  // ==================== COLUMN ====================
  Widget column({
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    MainAxisSize mainAxisSize = MainAxisSize.max,
  }) => Column(
    mainAxisAlignment: mainAxisAlignment,
    crossAxisAlignment: crossAxisAlignment,
    mainAxisSize: mainAxisSize,
    children: this,
  );

  Widget columnSpaceBetween() =>
      Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: this);
  Widget columnSpaceAround() =>
      Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: this);
  Widget columnSpaceEvenly() =>
      Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: this);
  Widget columnCenter() => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: this,
  );

  // ==================== STACK ====================
  Widget stack({
    AlignmentGeometry alignment = AlignmentDirectional.topStart,
    StackFit fit = StackFit.loose,
  }) => Stack(alignment: alignment, fit: fit, children: this);

  Widget stackCenter() => Stack(alignment: Alignment.center, children: this);

  // ==================== WRAP ====================
  Widget wrap({double spacing = 0, double runSpacing = 0}) =>
      Wrap(spacing: spacing, runSpacing: runSpacing, children: this);

  Widget wrapSpaced({double spacing = 8, double runSpacing = 8}) =>
      Wrap(spacing: spacing, runSpacing: runSpacing, children: this);

  // ==================== GAP ====================
  List<Widget> gap(double width) {
    if (isEmpty) return this;
    final result = <Widget>[];
    for (int i = 0; i < length; i++) {
      result.add(this[i]);
      if (i < length - 1) result.add(SizedBox(width: width));
    }
    return result;
  }

  List<Widget> gapV(double height) {
    if (isEmpty) return this;
    final result = <Widget>[];
    for (int i = 0; i < length; i++) {
      result.add(this[i]);
      if (i < length - 1) result.add(SizedBox(height: height));
    }
    return result;
  }
}

extension RowColumnExtensions on Widget {
  Widget spaceBetween() {
    if (this is Row) {
      final row = this as Row;
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: row.crossAxisAlignment,
        children: row.children,
      );
    } else if (this is Column) {
      final col = this as Column;
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: col.crossAxisAlignment,
        children: col.children,
      );
    }
    return this;
  }

  Widget spaceAround() {
    if (this is Row) {
      final row = this as Row;
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: row.crossAxisAlignment,
        children: row.children,
      );
    } else if (this is Column) {
      final col = this as Column;
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: col.crossAxisAlignment,
        children: col.children,
      );
    }
    return this;
  }

  Widget spaceEvenly() {
    if (this is Row) {
      final row = this as Row;
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: row.crossAxisAlignment,
        children: row.children,
      );
    } else if (this is Column) {
      final col = this as Column;
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: col.crossAxisAlignment,
        children: col.children,
      );
    }
    return this;
  }
}
