/// Awaitware UI Utilities - Tailwind CSS-inspired utilities for Flutter
///
/// A comprehensive collection of 500+ extension methods that bring Tailwind CSS-like
/// utility-first design to Flutter. Write cleaner, more maintainable UI code with
/// chainable extension methods.
///
/// ## Features
///
/// - **Spacing**: Padding and margin utilities (p4, px2, m4, etc.)
/// - **Colors**: Background and text colors with Material shades
/// - **Typography**: Font sizes, weights, alignment, and decorations
/// - **Sizing**: Width, height, and size constraints
/// - **Decoration**: Border radius, borders, shadows, and opacity
/// - **Layout**: Alignment, expansion, aspect ratios, and scrolling
/// - **Flex**: Row, Column, Stack, Wrap with convenient builders
/// - **Transform**: Rotation, scaling, translation, and flipping
/// - **Positioning**: Absolute and relative positioning
/// - **Visibility**: Show/hide and pointer event control
///
/// ## Quick Start
///
/// ```dart
/// import 'package:awaitware_ui_utilities/awaitware_ui_utilities.dart';
///
/// // Create a beautiful card with just a few extensions
/// Container()
///   .p6()              // Padding: 24px
///   .bgWhite()         // Background: white
///   .roundedXl()       // Border radius: 12px
///   .shadowLg()        // Large shadow
///   .m4();             // Margin: 16px
///
/// // Style text easily
/// Text('Hello World')
///   .text2Xl()         // Font size: 24px
///   .fontBold()        // Font weight: 700
///   .textBlue600()     // Color: blue.shade600
///   .textCenter();     // Align: center
///
/// // Build layouts quickly
/// [
///   Text('Item 1'),
///   Text('Item 2'),
///   Text('Item 3'),
/// ].gap(8).row();     // Row with 8px gaps
/// ```
///
/// ## Extension Categories
///
/// All extensions are automatically available when you import this library.
/// Chain them together for powerful, readable UI code!
library;

// Export the aw utility class for easier access
export 'src/aw.dart';

// Export all extension files
export 'src/spacing_extensions.dart';
export 'src/color_extensions.dart';
export 'src/typography_extensions.dart';
export 'src/sizing_extensions.dart';
export 'src/decoration_extensions.dart';
export 'src/layout_extensions.dart';
export 'src/flex_extensions.dart';
export 'src/transform_extensions.dart';
export 'src/positioning_extensions.dart';
export 'src/visibility_extensions.dart';
