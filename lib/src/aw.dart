import 'package:flutter/material.dart';

/// Awaitware UI Utilities - Short prefix class for easier access
///
/// Use `aw` as a prefix to access all utilities in a more explicit way.
/// This makes it easier for developers to discover available methods.
///
/// Example:
/// ```dart
/// // Using extensions directly
/// Text('Hello').text2Xl().fontBold().textBlue600()
///
/// // Using aw prefix (more discoverable)
/// aw.text('Hello').text2Xl().fontBold().textBlue600()
/// ```
// ignore: camel_case_types
class aw {
  aw._(); // Private constructor to prevent instantiation

  // ==================== TEXT HELPERS ====================

  /// Create a Text widget - easier to discover text utilities
  /// ```dart
  /// aw.text('Hello').text2Xl().fontBold()
  /// ```
  static Text text(
    String data, {
    Key? key,
    TextStyle? style,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    int? maxLines,
    String? semanticsLabel,
  }) {
    return Text(
      data,
      key: key,
      style: style,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
    );
  }

  // ==================== CONTAINER HELPERS ====================

  /// Create a Container widget - easier to discover container utilities
  /// ```dart
  /// aw.container().p4().bgBlue600().roundedXl()
  /// ```
  static Container container({
    Key? key,
    Widget? child,
    AlignmentGeometry? alignment,
    double? width,
    double? height,
  }) {
    return Container(
      key: key,
      alignment: alignment,
      width: width,
      height: height,
      child: child,
    );
  }

  /// Create a Container with a child - easier to discover container utilities
  /// ```dart
  /// aw.box(child: Text('Hello')).p4().bgWhite().roundedLg()
  /// ```
  static Container box({required Widget child}) {
    return Container(child: child);
  }

  // ==================== LAYOUT HELPERS ====================

  /// Create a Row from a list of widgets
  /// ```dart
  /// aw.row([Widget1(), Widget2()]).spaceBetween()
  /// ```
  static Row row(
    List<Widget> children, {
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    MainAxisSize mainAxisSize = MainAxisSize.max,
  }) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      children: children,
    );
  }

  /// Create a Column from a list of widgets
  /// ```dart
  /// aw.column([Widget1(), Widget2()]).spaceEvenly()
  /// ```
  static Column column(
    List<Widget> children, {
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    MainAxisSize mainAxisSize = MainAxisSize.max,
  }) {
    return Column(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      children: children,
    );
  }

  /// Create a Stack from a list of widgets
  /// ```dart
  /// aw.stack([Background(), Overlay()])
  /// ```
  static Stack stack(
    List<Widget> children, {
    AlignmentGeometry alignment = AlignmentDirectional.topStart,
    StackFit fit = StackFit.loose,
  }) {
    return Stack(alignment: alignment, fit: fit, children: children);
  }

  /// Create a Wrap from a list of widgets
  /// ```dart
  /// aw.wrap([Chip1(), Chip2(), Chip3()], spacing: 8)
  /// ```
  static Wrap wrap(
    List<Widget> children, {
    double spacing = 0,
    double runSpacing = 0,
    WrapAlignment alignment = WrapAlignment.start,
  }) {
    return Wrap(
      spacing: spacing,
      runSpacing: runSpacing,
      alignment: alignment,
      children: children,
    );
  }

  // ==================== SPACING HELPERS ====================

  /// Vertical spacing widget
  /// ```dart
  /// aw.spaceV(16)  // 16px vertical space
  /// ```
  static SizedBox spaceV(double height) => SizedBox(height: height);

  /// Horizontal spacing widget
  /// ```dart
  /// aw.spaceH(16)  // 16px horizontal space
  /// ```
  static SizedBox spaceH(double width) => SizedBox(width: width);

  /// Spacing using the Tailwind scale
  /// ```dart
  /// aw.space4()  // 16px space
  /// ```
  static SizedBox space1() => const SizedBox(height: 4, width: 4);
  static SizedBox space2() => const SizedBox(height: 8, width: 8);
  static SizedBox space3() => const SizedBox(height: 12, width: 12);
  static SizedBox space4() => const SizedBox(height: 16, width: 16);
  static SizedBox space6() => const SizedBox(height: 24, width: 24);
  static SizedBox space8() => const SizedBox(height: 32, width: 32);

  // ==================== DIVIDER HELPERS ====================

  /// Create a horizontal divider
  /// ```dart
  /// aw.divider()
  /// ```
  static Divider divider({
    double? height,
    double? thickness,
    Color? color,
    double? indent,
    double? endIndent,
  }) {
    return Divider(
      height: height,
      thickness: thickness,
      color: color,
      indent: indent,
      endIndent: endIndent,
    );
  }

  /// Create a vertical divider
  /// ```dart
  /// aw.verticalDivider()
  /// ```
  static VerticalDivider verticalDivider({
    double? width,
    double? thickness,
    Color? color,
    double? indent,
    double? endIndent,
  }) {
    return VerticalDivider(
      width: width,
      thickness: thickness,
      color: color,
      indent: indent,
      endIndent: endIndent,
    );
  }

  // ==================== ICON HELPERS ====================

  /// Create an Icon widget
  /// ```dart
  /// aw.icon(Icons.star).size16().textBlue600()
  /// ```
  static Icon icon(
    IconData icon, {
    Key? key,
    double? size,
    Color? color,
    String? semanticLabel,
  }) {
    return Icon(
      icon,
      key: key,
      size: size,
      color: color,
      semanticLabel: semanticLabel,
    );
  }

  // ==================== IMAGE HELPERS ====================

  /// Create a network Image widget
  /// ```dart
  /// aw.imageNetwork('url').aspectSquare().roundedXl()
  /// ```
  static Image imageNetwork(
    String url, {
    Key? key,
    double? width,
    double? height,
    BoxFit? fit,
  }) {
    return Image.network(url, key: key, width: width, height: height, fit: fit);
  }

  /// Create an asset Image widget
  /// ```dart
  /// aw.imageAsset('assets/image.png').aspectVideo().roundedLg()
  /// ```
  static Image imageAsset(
    String assetName, {
    Key? key,
    double? width,
    double? height,
    BoxFit? fit,
  }) {
    return Image.asset(
      assetName,
      key: key,
      width: width,
      height: height,
      fit: fit,
    );
  }

  // ==================== BUTTON HELPERS ====================

  /// Create a styled button quickly
  /// ```dart
  /// aw.button('Click Me', onPressed: () {})
  /// ```
  static Widget button(
    String text, {
    required VoidCallback? onPressed,
    Color? backgroundColor,
    Color? textColor,
    double? fontSize,
    FontWeight? fontWeight,
    EdgeInsets? padding,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: textColor,
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
      ),
    );
  }

  // ==================== CARD HELPERS ====================

  /// Create a card with default styling
  /// ```dart
  /// aw.card(child: Text('Card content'))
  /// ```
  static Widget card({
    required Widget child,
    EdgeInsets? padding,
    Color? color,
    double? borderRadius,
    List<BoxShadow>? boxShadow,
  }) {
    return Container(
      padding: padding ?? const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color ?? Colors.white,
        borderRadius: BorderRadius.circular(borderRadius ?? 12),
        boxShadow:
            boxShadow ??
            [
              const BoxShadow(
                color: Color(0x1A000000),
                offset: Offset(0, 4),
                blurRadius: 6,
                spreadRadius: -1,
              ),
            ],
      ),
      child: child,
    );
  }

  // ==================== UTILITY HELPERS ====================

  /// Create an empty SizedBox
  /// ```dart
  /// aw.empty()
  /// ```
  static SizedBox empty() => const SizedBox.shrink();

  /// Create an expanded widget
  /// ```dart
  /// aw.expanded(child: Container())
  /// ```
  static Expanded expanded({required Widget child, int flex = 1}) {
    return Expanded(flex: flex, child: child);
  }

  /// Center a widget
  /// ```dart
  /// aw.center(child: Text('Centered'))
  /// ```
  static Center center({required Widget child}) {
    return Center(child: child);
  }

  /// Add padding to a widget
  /// ```dart
  /// aw.padding(child: Text('Hello'), padding: EdgeInsets.all(16))
  /// ```
  static Padding padding({required Widget child, required EdgeInsets padding}) {
    return Padding(padding: padding, child: child);
  }
}
