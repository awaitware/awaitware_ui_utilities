# Getting Started with Awaitware UI Utilities

Welcome! This guide will help you get started with Awaitware UI Utilities in just a few minutes.

## Installation

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  awaitware_ui_utilities: ^1.0.0
```

Run:
```bash
flutter pub get
```

## Your First Widget

Import the package and start using the utilities:

```dart
import 'package:flutter/material.dart';
import 'package:awaitware_ui_utilities/awaitware_ui_utilities.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Hello World')
      .text2Xl()        // Font size: 24px
      .fontBold()       // Font weight: 700
      .textBlue600()    // Color: blue.shade600
      .textCenter()     // Alignment: center
      .p6()             // Padding: 24px
      .bgWhite()        // Background: white
      .roundedXl()      // Border radius: 12px
      .shadowLg();      // Large shadow
  }
}
```

That's it! You just created a beautifully styled text widget with just 8 chainable methods instead of deeply nested widgets.

## Core Concepts

### 1. Chainable Extensions

Every utility returns a `Widget`, so you can chain multiple utilities together:

```dart
Container()
  .p4()           // Add padding
  .bgBlue600()    // Add background color
  .roundedXl()    // Add border radius
  .shadowMd()     // Add shadow
  .m4();          // Add margin
```

### 2. Tailwind-Style Naming

If you know Tailwind CSS, you already know most of the API:

- `p4()` = padding: 16px (4 * 4px base unit)
- `m4()` = margin: 16px
- `text2Xl()` = font-size: 24px
- `bgBlue600()` = background: blue.shade600
- `roundedXl()` = border-radius: 12px

### 3. The 4px Base Unit

Like Tailwind, we use a 4px base unit for spacing:

- `p1()` = 4px
- `p2()` = 8px
- `p4()` = 16px
- `p6()` = 24px
- `p8()` = 32px

## Common Patterns

### Creating a Card

```dart
Column(
  children: [
    Text('Card Title').text2Xl().fontBold(),
    Text('Card description').textGray600().pt2(),
  ],
)
  .p6()
  .bgWhite()
  .roundedXl()
  .shadowLg()
  .m4()
```

### Creating a Button

```dart
Text('Click Me')
  .textSm()
  .fontSemibold()
  .textWhite()
  .px6()
  .py3()
  .bgBlue600()
  .roundedLg()
  .shadowSm()
```

### Creating a Layout with Gaps

```dart
[
  Widget1(),
  Widget2(),
  Widget3(),
].gap(12).row()  // Row with 12px gaps between items
```

### Responsive Container

```dart
Container()
  .maxWLg()      // Max width: 512px
  .wFull()       // But fill available space
  .mxAuto()      // Center horizontally
  .p6()
```

## Top 20 Most Used Utilities

### Spacing
1. `.p4()` - Padding all sides (16px)
2. `.px4()` - Horizontal padding (16px)
3. `.py4()` - Vertical padding (16px)
4. `.m4()` - Margin all sides (16px)

### Colors
5. `.bgWhite()` - White background
6. `.bgBlue600()` - Blue background
7. `.textWhite()` - White text
8. `.textGray600()` - Gray text

### Typography
9. `.text2Xl()` - Large text (24px)
10. `.textBase()` - Normal text (16px)
11. `.fontBold()` - Bold weight
12. `.textCenter()` - Center alignment

### Decoration
13. `.roundedXl()` - Large border radius (12px)
14. `.shadowLg()` - Large shadow
15. `.border()` - 1px border

### Layout
16. `.center()` - Center widget
17. `.expanded()` - Expand to fill space
18. `.wFull()` - Full width

### Flex
19. `.row()` - Create Row from list
20. `.gap(8)` - Add gaps between items

## IDE Autocomplete

All utilities have full IDE autocomplete support. Just type `.` after any `Widget` or `Text` and you'll see all available extensions!

## Next Steps

1. Check out the [README](README.md) for more examples
2. Browse the [complete reference](AWAITWARE_FLUTTER_COMPLETE_UI_UTILITIES.md) (500+ utilities)
3. Run the [example app](example/) to see everything in action
4. Start using it in your own projects!

## Tips for Success

### DO ✅
```dart
// Chain from specific to general
Text('Hello')
  .text2Xl()      // Content first
  .fontBold()
  .textBlue600()
  .p4()           // Layout last
  .bgWhite()
  .roundedLg()
```

### DON'T ❌
```dart
// Don't mix standard Flutter with utilities unnecessarily
Padding(
  padding: EdgeInsets.all(16),
  child: Container().bgBlue600(),  // Just use .p4()
)
```

### DO ✅
```dart
// Use gaps for clean layouts
[Item1(), Item2(), Item3()].gap(8).row()
```

### DON'T ❌
```dart
// Don't add margin to each item
Row(children: [
  Item1().mr2(),
  Item2().mr2(),
  Item3(),
])
```

## Questions?

- Check the [full documentation](AWAITWARE_FLUTTER_COMPLETE_UI_UTILITIES.md)
- Look at the [example app](example/)
- File an issue on [GitHub](https://github.com/awaitware/awaitware_ui_utilities/issues)

Happy coding! 🚀
