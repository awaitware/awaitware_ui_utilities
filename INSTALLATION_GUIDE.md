# 📦 Awaitware UI Utilities - Installation & Usage Guide

Complete guide for Flutter developers to add and use **awaitware_ui_utilities** in their projects.

---

## 🚀 Installation

### Method 1: Using pub.dev (Recommended)

Once your package is published on [pub.dev](https://pub.dev), developers can install it easily:

1. **Add to `pubspec.yaml`:**

```yaml
dependencies:
  flutter:
    sdk: flutter
  awaitware_ui_utilities: ^1.0.0
```

2. **Install the package:**

```bash
flutter pub get
```

3. **Import in your Dart files:**

```dart
import 'package:awaitware_ui_utilities/awaitware_ui_utilities.dart';
```

---

### Method 2: Using GitHub Repository (Development/Testing)

For testing or using the latest development version:

1. **Add to `pubspec.yaml`:**

```yaml
dependencies:
  flutter:
    sdk: flutter
  awaitware_ui_utilities:
    git:
      url: https://github.com/awaitware/awaitware_ui_utilities.git
      ref: main  # or specify a branch/tag
```

2. **Install the package:**

```bash
flutter pub get
```

3. **Import in your Dart files:**

```dart
import 'package:awaitware_ui_utilities/awaitware_ui_utilities.dart';
```

---

### Method 3: Local Development

For local development or testing:

1. **Clone the repository:**

```bash
git clone https://github.com/awaitware/awaitware_ui_utilities.git
```

2. **Add to `pubspec.yaml` with path:**

```yaml
dependencies:
  flutter:
    sdk: flutter
  awaitware_ui_utilities:
    path: ../awaitware_ui_utilities  # Adjust path to your local clone
```

3. **Install the package:**

```bash
flutter pub get
```

---

## ✅ Verify Installation

After installation, verify everything works:

```dart
import 'package:flutter/material.dart';
import 'package:awaitware_ui_utilities/awaitware_ui_utilities.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('Hello Awaitware!')
          .text2Xl()
          .fontBold()
          .textBlue600()
          .center(),
      ),
    );
  }
}
```

If the app runs without errors and shows styled text, you're ready to go!

---

## 📘 Usage Guide

### 🎯 Two Ways to Use

#### 1️⃣ Direct Extensions (Concise)

Apply extensions directly to widgets:

```dart
import 'package:awaitware_ui_utilities/awaitware_ui_utilities.dart';

// Style any widget with chainable methods
Container()
  .p4()           // Padding: 16px
  .bgWhite()      // Background: white
  .roundedXl()    // Border radius: 12px
  .shadowLg()     // Large shadow
  .m4();          // Margin: 16px

Text('Welcome')
  .text4Xl()      // Font size: 36px
  .fontBold()     // Font weight: bold
  .textCenter()   // Text align: center
  .textBlue600(); // Color: blue.shade600
```

#### 2️⃣ Using `aw` Prefix (Discoverable)

Use the `aw` helper class for better IDE autocomplete:

```dart
import 'package:awaitware_ui_utilities/awaitware_ui_utilities.dart';

// Create widgets with aw helpers
aw.text('Welcome')
  .text4Xl()
  .fontBold()
  .textBlue600();

aw.container()
  .p4()
  .bgWhite()
  .roundedXl();

// Quick layouts
aw.column([
  aw.text('Title').text2Xl().fontBold(),
  aw.text('Subtitle').textGray600(),
]).spaceEvenly().p4();

// Spacing helpers
aw.spaceV(16),  // Vertical space
aw.space4(),    // Tailwind-scale space (16px)

// Pre-styled components
aw.button('Click Me', onPressed: () {}),
aw.card(child: aw.text('Card content')),
```

**💡 Pro Tip:** Type `aw.` in your IDE to see all available helpers!

---

## 🎨 Common Use Cases

### Creating a Card

**Traditional Flutter (20+ lines):**
```dart
Padding(
  padding: const EdgeInsets.all(16),
  child: Container(
    padding: const EdgeInsets.all(24),
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
    child: Text(
      'Hello World',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.blue.shade600,
      ),
    ),
  ),
)
```

**With Awaitware (8 lines - 60% less code!):**
```dart
Text('Hello World')
  .text2Xl()
  .fontBold()
  .textBlue600()
  .p6()
  .bgWhite()
  .roundedXl()
  .shadowLg()
  .m4()
```

### Building a Button Row

```dart
[
  Text('Cancel')
    .textGray700()
    .px4()
    .py2()
    .border()
    .roundedLg(),

  Text('Confirm')
    .textWhite()
    .px4()
    .py2()
    .bgGreen600()
    .roundedLg(),
].gap(12).row()
```

### Profile Card Example

```dart
Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    // Avatar
    aw.imageNetwork('https://example.com/avatar.jpg')
      .size96()
      .roundedFull()
      .border()
      .borderGray300(),

    aw.spaceV(16),

    // Name
    aw.text('John Doe')
      .text2Xl()
      .fontBold()
      .textGray900(),

    // Title
    aw.text('Flutter Developer')
      .textBase()
      .textGray600()
      .pt2(),

    aw.spaceV(24),

    // Stats Row
    [
      _statItem('120', 'Posts'),
      _statItem('1.5K', 'Followers'),
      _statItem('340', 'Following'),
    ].gap(24).row().center(),
  ],
)
  .p6()
  .bgWhite()
  .roundedXl()
  .shadowLg()
  .m4()

// Helper widget
Widget _statItem(String value, String label) {
  return Column(
    children: [
      aw.text(value).textLg().fontBold().textGray900(),
      aw.text(label).textSm().textGray600().pt1(),
    ],
  );
}
```

---

## 🔥 Top Features & Extensions

### Spacing (Tailwind-scale)
```dart
.p4()     // padding: 16px all sides
.px2()    // padding: 8px horizontal
.py6()    // padding: 24px vertical
.m4()     // margin: 16px all sides
.mxAuto() // margin: auto (center)
```

### Colors (Material Palette)
```dart
.bgBlue600()    // background: Colors.blue.shade600
.bgWhite()      // background: Colors.white
.textRed600()   // text color: Colors.red.shade600
.textGray900()  // text color: Colors.grey.shade900
```

### Typography
```dart
.textXs()       // 12px
.textSm()       // 14px
.textBase()     // 16px
.textLg()       // 18px
.text2Xl()      // 24px
.text4Xl()      // 36px
.fontBold()     // weight: 700
.fontSemibold() // weight: 600
.textCenter()   // align: center
.underline()    // decoration: underline
```

### Sizing
```dart
.w64()      // width: 256px
.wFull()    // width: double.infinity
.h32()      // height: 128px
.size16()   // 64x64 square
.maxWLg()   // max-width: 512px
```

### Decoration
```dart
.roundedXl()    // border-radius: 12px
.roundedFull()  // border-radius: 9999px (circle)
.border()       // border: 1px solid
.shadowLg()     // box-shadow: large
.opacity50()    // opacity: 0.5
```

### Layout
```dart
.center()         // Center widget
.expanded()       // Expanded widget
.aspectSquare()   // aspect ratio 1:1
.aspectVideo()    // aspect ratio 16:9
.scrollable()     // SingleChildScrollView
```

### Flex Layouts
```dart
[widget1, widget2].row()           // Row
[widget1, widget2].column()        // Column
[widget1, widget2].gap(8).row()    // Row with 8px gaps
[widget1, widget2].gapV(12)        // Add 12px vertical gaps
```

---

## 🎓 Learning Resources

### Quick Reference
- **All Extensions:** See [AWAITWARE_FLUTTER_COMPLETE_UI_UTILITIES.md](https://github.com/awaitware/awaitware_ui_utilities/blob/main/AWAITWARE_FLUTTER_COMPLETE_UI_UTILITIES.md)
- **Examples:** Check the [example](https://github.com/awaitware/awaitware_ui_utilities/tree/main/example) directory

### Spacing Scale (Tailwind-based)
- `1` = 4px
- `2` = 8px
- `3` = 12px
- `4` = 16px
- `6` = 24px
- `8` = 32px
- `12` = 48px
- `16` = 64px

---

## 🐛 Troubleshooting

### Package Not Found
```bash
# Clear pub cache and reinstall
flutter pub cache repair
flutter pub get
```

### Import Errors
Make sure you're importing the correct package:
```dart
import 'package:awaitware_ui_utilities/awaitware_ui_utilities.dart';
```

### IDE Autocomplete Not Working
1. Restart your IDE
2. Run `flutter pub get`
3. Clear Dart analysis cache: `dart pub cache repair`

### Conflicts with Other Packages
If you have extension method conflicts, you can use prefixes:
```dart
import 'package:awaitware_ui_utilities/awaitware_ui_utilities.dart' as aw;

// Use with prefix
Text('Hello').aw.fontBold()

// Or use the aw helper class
aw.text('Hello').fontBold()
```

---

## 📦 Publishing to pub.dev

For package maintainers - steps to publish:

1. **Prepare the package:**
```bash
cd awaitware_ui_utilities
flutter pub publish --dry-run
```

2. **Fix any issues** reported by dry-run

3. **Publish:**
```bash
flutter pub publish
```

4. **Verify on pub.dev:**
Visit https://pub.dev/packages/awaitware_ui_utilities

---

## 🤝 Contributing

Want to contribute? Great!

1. **Fork the repository**
2. **Create a feature branch:** `git checkout -b feature/amazing-feature`
3. **Commit changes:** `git commit -m 'Add amazing feature'`
4. **Push to branch:** `git push origin feature/amazing-feature`
5. **Open a Pull Request**

---

## 📞 Support

- 🐛 **Issues:** [GitHub Issues](https://github.com/awaitware/awaitware_ui_utilities/issues)
- 📖 **Docs:** [Full Documentation](https://github.com/awaitware/awaitware_ui_utilities/blob/main/AWAITWARE_FLUTTER_COMPLETE_UI_UTILITIES.md)
- 💬 **Discussions:** [GitHub Discussions](https://github.com/awaitware/awaitware_ui_utilities/discussions)

---

## 📄 License

MIT License - see [LICENSE](https://github.com/awaitware/awaitware_ui_utilities/blob/main/LICENSE) file for details.

---

**Happy Coding! 🚀**

*Made with ❤️ for Flutter Developers*
