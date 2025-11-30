# Awaitware UI Utilities

[![pub package](https://img.shields.io/pub/v/awaitware_ui_utilities.svg)](https://pub.dev/packages/awaitware_ui_utilities)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

**Tailwind CSS-inspired UI utilities for Flutter** - Write beautiful, maintainable Flutter UIs with 500+ chainable extension methods.

Bring the power of utility-first CSS to Flutter! Build UIs faster with intuitive, chainable methods that feel like Tailwind CSS but work perfectly with Flutter's widget system.

## ✨ Features

- 🎨 **500+ Extension Methods** - Comprehensive utilities covering all common UI needs
- ⛓️ **Chainable API** - Combine multiple utilities for clean, readable code
- 🎯 **Type-Safe** - Full Dart type safety with IDE autocomplete
- 📦 **Zero Dependencies** - Only requires Flutter SDK
- 🚀 **Performance Optimized** - Lightweight extensions with minimal overhead
- 📱 **Production Ready** - Battle-tested patterns from real-world apps

## 🎯 Why Awaitware UI Utilities?

### Before (Traditional Flutter)
```dart
Padding(
  padding: const EdgeInsets.all(16),
  child: Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Color(0x1A000000),
          offset: Offset(0, 10),
          blurRadius: 15,
          spreadRadius: -3,
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(24),
      child: Text(
        'Hello World',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.blue.shade600,
        ),
        textAlign: TextAlign.center,
      ),
    ),
  ),
)
```

### After (With Awaitware UI Utilities)
```dart
Text('Hello World')
  .text2Xl()
  .fontBold()
  .textBlue600()
  .textCenter()
  .p6()
  .bgWhite()
  .roundedXl()
  .shadowLg()
  .p4()
```

**60-70% less code!** More readable, easier to maintain, and faster to write.

## 📦 Installation

### From pub.dev (Recommended)

Add to your `pubspec.yaml`:

```yaml
dependencies:
  awaitware_ui_utilities: ^1.0.0
```

Then run:
```bash
flutter pub get
```

### From GitHub

```yaml
dependencies:
  awaitware_ui_utilities:
    git:
      url: https://github.com/awaitware/awaitware_ui_utilities.git
      ref: main
```

**📖 Need help?** See the [Installation Guide](INSTALLATION_GUIDE.md) for detailed instructions.

## 🚀 Quick Start

### Method 1: Using Extensions (Direct)

```dart
import 'package:flutter/material.dart';
import 'package:awaitware_ui_utilities/awaitware_ui_utilities.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            // Beautiful card with extensions
            Text('Welcome!')
              .text4Xl()
              .fontBold()
              .textCenter()
              .p6()
              .bgBlue600()
              .roundedXl()
              .shadowLg()
              .m4(),

            // Quick button layouts
            [
              Text('Cancel').textGray700().px4().py2().border().roundedLg(),
              Text('Confirm').textWhite().px4().py2().bgGreen600().roundedLg(),
            ].gap(12).row(),
          ],
        ).p4(),
      ),
    );
  }
}
```

### Method 2: Using the `aw` Prefix (More Discoverable)

```dart
import 'package:flutter/material.dart';
import 'package:awaitware_ui_utilities/awaitware_ui_utilities.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: aw.column(
          [
            // Beautiful card with aw prefix
            aw.text('Welcome!')
              .text4Xl()
              .fontBold()
              .textCenter()
              .p6()
              .bgBlue600()
              .roundedXl()
              .shadowLg()
              .m4(),

            // Quick button with aw helper
            aw.button(
              'Get Started',
              onPressed: () {},
              backgroundColor: Colors.green.shade600,
            ),

            aw.spaceV(16),

            // Card helper
            aw.card(
              child: aw.text('Easy card creation!').textCenter(),
            ),
          ],
        ).p4(),
      ),
    );
  }
}
```

**Pro Tip:** Type `aw.` in your IDE to see all available helpers with autocomplete!

## 🔧 The `aw` Prefix - Your Utility Toolkit

The `aw` class provides convenient helper methods for creating widgets with better discoverability:

```dart
// Widget Creators
aw.text('Hello')           // Create Text widget
aw.container()             // Create Container widget
aw.box(child: Widget)      // Container with child
aw.icon(Icons.star)        // Create Icon widget

// Layout Builders
aw.row([Widget1(), Widget2()])      // Create Row
aw.column([Widget1(), Widget2()])   // Create Column
aw.stack([Widget1(), Widget2()])    // Create Stack
aw.wrap([Chip1(), Chip2()])         // Create Wrap

// Spacing Helpers
aw.spaceV(16)              // Vertical spacing (16px)
aw.spaceH(16)              // Horizontal spacing (16px)
aw.space4()                // 16px space (Tailwind scale)

// Quick Helpers
aw.button('Click', onPressed: () {})  // Styled button
aw.card(child: Widget)                // Card with shadow
aw.divider()                          // Horizontal divider
aw.empty()                            // Empty SizedBox

// Images
aw.imageNetwork('url')     // Network image
aw.imageAsset('path')      // Asset image
```

### Why Use `aw`?

1. **Better Discoverability**: Type `aw.` and see all helpers
2. **Cleaner for Widget Creation**: `aw.text('Hello')` vs `Text('Hello')`
3. **Combine with Extensions**: `aw.text('Hello').fontBold().textBlue600()`
4. **IDE Autocomplete**: Full IntelliSense support

## 📚 Complete Extension Reference

### 1. Spacing (90+ methods)

```dart
// Padding
Container().p4()     // 16px all sides
Container().px4()    // 16px horizontal
Container().py6()    // 24px vertical
Container().pt4()    // 16px top only

// Margin
Container().m4()     // 16px all sides
Container().mx4()    // 16px horizontal
Container().mxAuto() // Center horizontally
```

### 2. Colors (200+ methods)

```dart
// Background
Container().bgBlue600()
Container().bgWhite()

// Text
Text('Hello').textRed600()
Text('Info').textBlue600()
```

### 3. Typography (60+ methods)

```dart
Text('Title').text4Xl().fontBold()
Text('Body').textBase().fontNormal()
Text('Link').underline().textBlue600()
```

### 4. Sizing (50+ methods)

```dart
Container().w64()      // 256px width
Container().wFull()    // 100% width
Icon().size16()        // 64x64 square
Container().maxWLg()   // Max 512px
```

### 5. Decoration (40+ methods)

```dart
Container().roundedXl()     // 12px radius
Container().border()        // 1px border
Container().shadowLg()      // Large shadow
Container().opacity50()     // 50% opacity
```

### 6. Layout (30+ methods)

```dart
Container().center()
Container().expanded()
Image().aspectVideo()   // 16:9
Column().scrollable()
```

### 7. Flex (20+ methods)

```dart
[Item1(), Item2()].row()
[Item1(), Item2()].column()
[Item1(), Item2(), Item3()].gap(8).row()
```

### 8. Transform (15+ methods)

```dart
Icon().rotate45()
Container().scale110()
Image().flipH()
```

### 9. Positioning (10+ methods)

```dart
Text('Top').top0()
Container().positionFill()
```

### 10. Visibility (6+ methods)

```dart
Container().show(condition)
Container().hide(!condition)
```

## 🎨 Real-World Example

```dart
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text('Beautiful Card')
      .text2Xl()
      .fontBold(),

    Text('Built with Awaitware utilities')
      .textGray600()
      .pt2(),

    [
      Text('Learn More')
        .textSm()
        .fontSemibold()
        .textWhite()
        .px4()
        .py2()
        .bgBlue600()
        .roundedLg(),

      Text('Cancel')
        .textSm()
        .fontSemibold()
        .textGray700()
        .px4()
        .py2()
        .border()
        .borderGray300()
        .roundedLg(),
    ].gap(12).row(),
  ].gapV(8),
)
  .p6()
  .bgWhite()
  .roundedXl()
  .shadowLg()
  .m4()
```

## 📖 Documentation

- **⚡ [Quick Start Guide](QUICK_START.md)** - Get started in 5 minutes
- **📦 [Installation Guide](INSTALLATION_GUIDE.md)** - Detailed installation instructions
- **📚 [Complete API Reference](AWAITWARE_FLUTTER_COMPLETE_UI_UTILITIES.md)** - All 500+ utilities with examples
- **💡 [Example Apps](example/)** - Working code examples

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

**Made with ❤️ for Flutter Developers**

*Inspired by Tailwind CSS, built for Flutter*
