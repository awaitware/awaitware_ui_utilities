# 🚀 Get Started with Awaitware UI Utilities

**For Flutter Developers** - Complete guide to add and use Awaitware UI Utilities in your projects.

---

## 📦 What is Awaitware UI Utilities?

**Awaitware UI Utilities** is a Tailwind CSS-inspired Flutter package that provides 500+ chainable extension methods to help you build beautiful UIs with **60-70% less code**.

### Key Benefits
- ⚡ **Write Less Code** - Reduce boilerplate by 60-70%
- 🎨 **Beautiful UIs** - Tailwind CSS-inspired utilities
- ⛓️ **Chainable Methods** - Combine utilities for clean code
- 🎯 **Type-Safe** - Full Dart type safety
- 📦 **Zero Dependencies** - Only needs Flutter SDK
- 🚀 **Production Ready** - Optimized for real apps

---

## 🎯 Quick Comparison

### Traditional Flutter (20 lines)
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
      textAlign: TextAlign.center,
    ),
  ),
)
```

### With Awaitware UI Utilities (8 lines - 60% less!)
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
  .m4()
```

---

## ⚡ Installation (2 Minutes)

### Option 1: From pub.dev (Recommended)

1. **Add to `pubspec.yaml`:**
```yaml
dependencies:
  flutter:
    sdk: flutter
  awaitware_ui_utilities: ^1.0.0
```

2. **Install:**
```bash
flutter pub get
```

3. **Import:**
```dart
import 'package:awaitware_ui_utilities/awaitware_ui_utilities.dart';
```

### Option 2: From GitHub (Latest)

```yaml
dependencies:
  awaitware_ui_utilities:
    git:
      url: https://github.com/awaitware/awaitware_ui_utilities.git
      ref: main
```

Then run:
```bash
flutter pub get
```

---

## 🎓 Usage Guide

### Two Ways to Use

#### 1️⃣ Direct Extensions (Most Concise)

```dart
// Apply extensions directly to widgets
Text('Welcome')
  .text4Xl()
  .fontBold()
  .textBlue600()
  .center()

Container()
  .p4()
  .bgWhite()
  .roundedXl()
  .shadowLg()

// Build layouts quickly
[
  Text('Cancel').px4().py2().border().roundedLg(),
  Text('Confirm').textWhite().px4().py2().bgGreen600().roundedLg(),
].gap(12).row()
```

#### 2️⃣ Using `aw` Helper (Most Discoverable)

```dart
// Use aw prefix for better IDE autocomplete
aw.text('Welcome')
  .text4Xl()
  .fontBold()
  .textBlue600()

aw.column([
  aw.text('Title').text2Xl().fontBold(),
  aw.text('Subtitle').textGray600(),
  aw.spaceV(16),
  aw.button('Click Me', onPressed: () {}),
]).center()
```

**💡 Pro Tip:** Type `aw.` in your IDE to discover all available helpers!

---

## 🔥 Most Used Features

### Spacing (Tailwind Scale)
```dart
.p4()     // padding: 16px all sides
.px2()    // padding-x: 8px horizontal
.py6()    // padding-y: 24px vertical
.m4()     // margin: 16px all sides
.mxAuto() // center horizontally
```

**Scale:** 1=4px, 2=8px, 3=12px, 4=16px, 6=24px, 8=32px, 12=48px, 16=64px

### Colors (Material Palette)
```dart
.bgBlue600()    // background
.bgWhite()      // white background
.textRed600()   // text color
.textGray900()  // dark text
```

All Material colors available with shades 50-900!

### Typography
```dart
.textXs()       // 12px
.textBase()     // 16px
.text2Xl()      // 24px
.text4Xl()      // 36px
.fontBold()     // weight: 700
.textCenter()   // align center
.underline()    // underline text
```

### Layout & Decoration
```dart
.roundedXl()    // border-radius: 12px
.roundedFull()  // circle
.border()       // 1px border
.shadowLg()     // large shadow
.center()       // center widget
.expanded()     // fill space
```

---

## 💼 Real-World Examples

### Simple Card
```dart
aw.text('Card Title')
  .text2Xl()
  .fontBold()
  .p6()
  .bgWhite()
  .roundedXl()
  .shadowLg()
  .m4()
```

### Profile Card
```dart
aw.column([
  aw.imageNetwork('https://example.com/avatar.jpg')
    .size96()
    .roundedFull()
    .border(),

  aw.spaceV(16),

  aw.text('John Doe').text2Xl().fontBold(),
  aw.text('Flutter Developer').textGray600(),

  aw.spaceV(24),

  aw.button('Follow', onPressed: () {}),
])
  .p6()
  .bgWhite()
  .roundedXl()
  .shadowLg()
```

### Button Row
```dart
[
  aw.text('Cancel')
    .textGray700()
    .px4()
    .py2()
    .border()
    .borderGray300()
    .roundedLg(),

  aw.text('Confirm')
    .textWhite()
    .px4()
    .py2()
    .bgBlue600()
    .roundedLg(),
].gap(12).row().center()
```

### Form Card
```dart
aw.column([
  aw.text('Login').text3Xl().fontBold(),
  aw.spaceV(24),

  TextField(decoration: InputDecoration(labelText: 'Email'))
    .py2(),

  TextField(decoration: InputDecoration(labelText: 'Password'))
    .py2(),

  aw.spaceV(24),

  aw.button(
    'Login',
    onPressed: () {},
    backgroundColor: Colors.blue.shade600,
  ).wFull(),
])
  .p8()
  .bgWhite()
  .roundedXl()
  .shadowLg()
  .m4()
```

---

## 📚 Complete Feature List

### 10 Extension Categories

1. **Spacing** (90+ methods) - Padding, margin, auto-margin
2. **Colors** (200+ methods) - All Material colors with shades
3. **Typography** (60+ methods) - Sizes, weights, alignment, decoration
4. **Sizing** (50+ methods) - Width, height, constraints
5. **Decoration** (40+ methods) - Borders, shadows, opacity, radius
6. **Layout** (30+ methods) - Alignment, expansion, scrolling
7. **Flex** (20+ methods) - Row, Column, Stack, Wrap with gaps
8. **Transform** (15+ methods) - Rotate, scale, translate, flip
9. **Positioning** (10+ methods) - Absolute, relative positioning
10. **Visibility** (6+ methods) - Show, hide, pointer events

### `aw` Helper Class

- Widget creators: `text()`, `container()`, `box()`, `icon()`
- Layouts: `row()`, `column()`, `stack()`, `wrap()`
- Spacing: `spaceV()`, `spaceH()`, `space4()`
- Components: `button()`, `card()`, `divider()`
- Images: `imageNetwork()`, `imageAsset()`
- Utilities: `empty()`, `expanded()`, `center()`

---

## 🎯 Quick Start Tutorial (5 Minutes)

### Step 1: Create a New Flutter Project
```bash
flutter create my_app
cd my_app
```

### Step 2: Add Awaitware UI Utilities
Edit `pubspec.yaml`:
```yaml
dependencies:
  flutter:
    sdk: flutter
  awaitware_ui_utilities: ^1.0.0
```

Run:
```bash
flutter pub get
```

### Step 3: Update main.dart
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
          aw.text('Welcome!')
            .text4Xl()
            .fontBold()
            .textBlue600()
            .pt8(),

          aw.text('Build UIs 60% faster')
            .textGray600()
            .pt2(),

          aw.spaceV(32),

          aw.card(
            child: aw.column([
              aw.text('Beautiful Card').text2Xl().fontBold(),
              aw.text('Created with utilities').textGray600().pt2(),
              aw.spaceV(16),
              aw.button('Get Started', onPressed: () {}),
            ]),
          ),
        ]).center().p4(),
      ),
    );
  }
}
```

### Step 4: Run Your App
```bash
flutter run
```

🎉 **That's it!** You're now using Awaitware UI Utilities!

---

## 📖 Documentation Links

- **⚡ [Quick Start Guide](QUICK_START.md)** - 5-minute introduction
- **📦 [Installation Guide](INSTALLATION_GUIDE.md)** - Detailed setup
- **📚 [Complete API Reference](AWAITWARE_FLUTTER_COMPLETE_UI_UTILITIES.md)** - All 500+ methods
- **💡 [Example Apps](example/)** - Working code examples
- **🤝 [Contributing Guide](CONTRIBUTING.md)** - How to contribute
- **📄 [Changelog](CHANGELOG.md)** - Version history

---

## 💡 Tips & Best Practices

### 1. Use IDE Autocomplete
Type `.` after any widget to see all available extensions:
```dart
Text('Hello').  // IDE shows all text extensions
Container().    // IDE shows all container extensions
```

### 2. Discover with `aw.`
Type `aw.` to see all helper methods:
```dart
aw.  // IDE shows: text(), container(), row(), column(), etc.
```

### 3. Chain for Readability
```dart
// Good - easy to read vertically
Text('Title')
  .text2Xl()
  .fontBold()
  .textBlue600()
  .center()

// Less readable
Text('Title').text2Xl().fontBold().textBlue600().center()
```

### 4. Follow Tailwind Scale
Use the spacing scale consistently:
- Small spacing: `p2()` (8px)
- Medium spacing: `p4()` (16px)
- Large spacing: `p6()` (24px)

### 5. Combine Extensions and `aw`
```dart
aw.text('Hello')   // Use aw for widget creation
  .text2Xl()       // Use extensions for styling
  .fontBold()
```

---

## 🔧 Troubleshooting

### Package Not Found
```bash
flutter pub cache repair
flutter pub get
```

### Import Errors
Make sure you're importing correctly:
```dart
import 'package:awaitware_ui_utilities/awaitware_ui_utilities.dart';
```

### Autocomplete Not Working
1. Restart your IDE
2. Run `flutter pub get`
3. Rebuild: `flutter clean && flutter pub get`

---

## 🌟 Why Use Awaitware UI Utilities?

### ✅ Faster Development
- Write 60-70% less code
- Build UIs in minutes, not hours
- Focus on logic, not boilerplate

### ✅ Cleaner Code
- Chainable, readable methods
- Self-documenting code
- Easy to maintain

### ✅ Better DX
- IDE autocomplete support
- Type-safe API
- Clear, predictable naming

### ✅ Production Ready
- Zero dependencies
- Optimized performance
- Battle-tested in real apps

---

## 🤝 Community & Support

- **🐛 Report Issues:** [GitHub Issues](https://github.com/awaitware/awaitware_ui_utilities/issues)
- **💬 Discussions:** [GitHub Discussions](https://github.com/awaitware/awaitware_ui_utilities/discussions)
- **📖 Documentation:** [GitHub Repository](https://github.com/awaitware/awaitware_ui_utilities)
- **⭐ Star on GitHub:** [awaitware/awaitware_ui_utilities](https://github.com/awaitware/awaitware_ui_utilities)

---

## 📄 License

MIT License - Free for commercial and personal use.

See [LICENSE](LICENSE) for details.

---

## 🚀 Ready to Build?

Start creating beautiful Flutter UIs today!

```bash
flutter pub add awaitware_ui_utilities
```

**Happy Coding! 🎉**

---

*Made with ❤️ for Flutter Developers*

*Inspired by Tailwind CSS, built for Flutter*
