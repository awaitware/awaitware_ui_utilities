# ⚡ Quick Start Guide - Awaitware UI Utilities

Get up and running with **awaitware_ui_utilities** in 5 minutes!

---

## Step 1: Install (30 seconds)

Add to your `pubspec.yaml`:

```yaml
dependencies:
  awaitware_ui_utilities: ^1.0.0
```

Run:
```bash
flutter pub get
```

---

## Step 2: Import (5 seconds)

Add this import to your Dart file:

```dart
import 'package:awaitware_ui_utilities/awaitware_ui_utilities.dart';
```

---

## Step 3: Start Using! (Immediately)

### Example 1: Style a Text Widget

**Before:**
```dart
Text(
  'Hello World',
  style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.blue.shade600,
  ),
  textAlign: TextAlign.center,
)
```

**After:**
```dart
Text('Hello World')
  .text2Xl()
  .fontBold()
  .textBlue600()
  .textCenter()
```

### Example 2: Create a Card

**Before:**
```dart
Container(
  margin: EdgeInsets.all(16),
  padding: EdgeInsets.all(24),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
    boxShadow: [
      BoxShadow(
        color: Color(0x1A000000),
        offset: Offset(0, 10),
        blurRadius: 15,
      ),
    ],
  ),
  child: Text('Card Content'),
)
```

**After:**
```dart
Text('Card Content')
  .p6()
  .bgWhite()
  .roundedXl()
  .shadowLg()
  .m4()
```

### Example 3: Build a Row of Buttons

```dart
[
  Text('Cancel').px4().py2().border().roundedLg(),
  Text('Confirm').textWhite().px4().py2().bgGreen600().roundedLg(),
].gap(12).row()
```

### Example 4: Using the `aw` Helper

```dart
aw.column([
  aw.text('Welcome').text4Xl().fontBold(),
  aw.text('Get started with Awaitware').textGray600(),
  aw.spaceV(24),
  aw.button('Start Now', onPressed: () {}),
]).center().p6()
```

---

## 🎯 Most Used Extensions

### Spacing
```dart
.p4()     // padding: 16px
.px2()    // padding-x: 8px
.py6()    // padding-y: 24px
.m4()     // margin: 16px
```

### Colors
```dart
.bgWhite()       // background: white
.bgBlue600()     // background: blue.shade600
.textGray900()   // text color: gray.shade900
```

### Typography
```dart
.textXs()        // font-size: 12px
.textBase()      // font-size: 16px
.text2Xl()       // font-size: 24px
.fontBold()      // font-weight: bold
.textCenter()    // text-align: center
```

### Layout
```dart
.roundedXl()     // border-radius: 12px
.shadowLg()      // box-shadow: large
.border()        // border: 1px
.center()        // Center widget
```

---

## 🚀 Complete Example App

```dart
import 'package:flutter/material.dart';
import 'package:awaitware_ui_utilities/awaitware_ui_utilities.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Awaitware Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('Awaitware UI Utilities')),
        body: aw.column([
          // Header
          aw.text('Welcome!')
            .text4Xl()
            .fontBold()
            .textBlue600()
            .textCenter()
            .pt8(),

          // Subtitle
          aw.text('Build UIs faster with utilities')
            .textBase()
            .textGray600()
            .textCenter()
            .pt2(),

          aw.spaceV(32),

          // Card Example
          _buildCard(
            title: 'Beautiful Card',
            description: 'Created with just a few extensions',
            buttonText: 'Learn More',
          ),

          aw.spaceV(16),

          // Another Card
          _buildCard(
            title: '500+ Extensions',
            description: 'Comprehensive utilities for Flutter',
            buttonText: 'Explore',
          ),
        ]).scrollable().p4(),
      ),
    );
  }

  Widget _buildCard({
    required String title,
    required String description,
    required String buttonText,
  }) {
    return aw.column([
      aw.text(title).text2Xl().fontBold().textGray900(),
      aw.text(description).textBase().textGray600().pt2(),
      aw.spaceV(16),
      aw.button(
        buttonText,
        onPressed: () {},
        backgroundColor: Colors.blue.shade600,
      ),
    ])
      .p6()
      .bgWhite()
      .roundedXl()
      .shadowLg();
  }
}
```

---

## 📚 What's Next?

1. **Explore All Extensions:** [Complete Documentation](https://github.com/awaitware/awaitware_ui_utilities/blob/main/AWAITWARE_FLUTTER_COMPLETE_UI_UTILITIES.md)
2. **Check Examples:** [Example Directory](https://github.com/awaitware/awaitware_ui_utilities/tree/main/example)
3. **Read Full Guide:** [Installation Guide](https://github.com/awaitware/awaitware_ui_utilities/blob/main/INSTALLATION_GUIDE.md)

---

## 💡 Tips

1. **Use IDE Autocomplete:** Type `.` after any widget to see available extensions
2. **Use `aw.` prefix:** Type `aw.` to discover helper methods
3. **Chain Extensions:** Combine multiple methods for powerful styling
4. **Follow Tailwind Scale:** Spacing follows Tailwind's 4px base scale

---

## 🎉 You're Ready!

Start building beautiful Flutter UIs with 60-70% less code!

**Questions?** Open an issue on [GitHub](https://github.com/awaitware/awaitware_ui_utilities/issues)

---

*Made with ❤️ for Flutter Developers*
