# Awaitware UI Utilities - Quick Reference Card

**v1.0.1** | [Full Documentation](README.md) | [Examples](example/)

---

## 🚀 Installation

```yaml
dependencies:
  awaitware_ui_utilities: ^1.0.1
```

```dart
import 'package:awaitware_ui_utilities/awaitware_ui_utilities.dart';
```

---

## 📏 Spacing Scale

| Value | Pixels | Use Case |
|-------|--------|----------|
| `1` | 4px | Tiny gaps |
| `2` | 8px | Small spacing |
| `3` | 12px | Compact spacing |
| `4` | 16px | Standard spacing |
| `6` | 24px | Medium spacing |
| `8` | 32px | Large spacing |
| `12` | 48px | Extra large |
| `16` | 64px | Huge spacing |

---

## 🎨 Most Used Extensions

### Padding
```dart
.p4()      // 16px all sides
.px4()     // 16px horizontal only
.py4()     // 16px vertical only
.pt4()     // 16px top only
.pr4()     // 16px right only
.pb4()     // 16px bottom only
.pl4()     // 16px left only
```

### Margin
```dart
.m4()      // 16px all sides
.mx4()     // 16px horizontal only
.my4()     // 16px vertical only
.mxAuto()  // Center horizontally
```

### Colors
```dart
// Background
.bgWhite()
.bgBlack()
.bgBlue600()
.bgGreen600()
.bgRed600()

// Text
.textWhite()
.textBlack()
.textBlue600()
.textGray500()
```

### Typography
```dart
// Sizes
.textXs()      // 12px
.textSm()      // 14px
.textBase()    // 16px
.textLg()      // 18px
.textXl()      // 20px
.text2Xl()     // 24px
.text3Xl()     // 30px
.text4Xl()     // 36px

// Weights
.fontBold()
.fontSemibold()
.fontMedium()
.fontNormal()

// Alignment
.textLeft()
.textCenter()
.textRight()

// Decoration
.underline()
.italic()
```

### Sizing
```dart
// Width
.w16()     // 64px
.w32()     // 128px
.wFull()   // 100%

// Height
.h16()     // 64px
.h32()     // 128px
.hFull()   // 100%

// Square
.w16().h16()
```

### Decoration
```dart
// Border Radius
.rounded()       // 4px
.roundedLg()     // 8px
.roundedXl()     // 12px
.rounded2Xl()    // 16px
.roundedFull()   // 9999px (circle)

// Borders
.border()        // 1px
.border2()       // 2px
.borderBlue600() // Colored border

// Shadows
.shadowSm()
.shadow()
.shadowMd()
.shadowLg()
.shadowXl()

// Opacity
.opacity25()
.opacity50()
.opacity75()
```

### Layout
```dart
.center()      // Center widget
.expanded()    // Fill space
.scrollable()  // Make scrollable
```

---

## 🔧 aw Helper Class

### Widget Creators
```dart
aw.text('Hello')
aw.container()
aw.box(child: widget)
aw.icon(Icons.star)
```

### Layouts
```dart
aw.row([widget1, widget2])
aw.column([widget1, widget2])
aw.stack([widget1, widget2])
```

### Spacing
```dart
aw.spaceV(16)  // Vertical space
aw.spaceH(16)  // Horizontal space
aw.space4()    // 16px space
```

### Components
```dart
aw.button('Click', onPressed: () {})
aw.card(child: widget)
aw.divider()
```

---

## 💡 Common Patterns

### Button
```dart
Text('Click Me')
  .fontSemibold()
  .textWhite()
  .px6()
  .py3()
  .bgBlue600()
  .roundedLg()
  .shadowSm()
```

### Card
```dart
Column(children: [...])
  .p6()
  .bgWhite()
  .roundedXl()
  .shadowLg()
  .m4()
```

### Row with Gaps
```dart
[widget1, widget2, widget3]
  .gap(12)
  .row()
```

### Centered Content
```dart
Text('Centered')
  .text2Xl()
  .fontBold()
  .center()
```

---

## 📐 Flex Utilities

```dart
// Row
[item1, item2].row()
[item1, item2].gap(8).row()
[item1, item2].row().spaceBetween()

// Column
[item1, item2].column()
[item1, item2].gapV(12)

// Stack
[bg, overlay].stack()

// Wrap
[chip1, chip2, chip3].wrapSpaced(spacing: 8, runSpacing: 8)
```

---

## 🔄 Transform

```dart
.rotate45()      // Rotate 45°
.rotate90()      // Rotate 90°
.scale110()      // Scale to 110%
.flipH()         // Flip horizontal
.flipV()         // Flip vertical
```

---

## 🎯 Before & After

### Traditional Flutter
```dart
Container(
  margin: EdgeInsets.all(16),
  padding: EdgeInsets.all(24),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
    boxShadow: [BoxShadow(...)],
  ),
  child: Text(
    'Hello',
    style: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
  ),
)
```

### With Awaitware
```dart
Text('Hello')
  .text2Xl()
  .fontBold()
  .p6()
  .bgWhite()
  .roundedXl()
  .shadowLg()
  .m4()
```

**60-70% less code!** ✨

---

## 📚 Full Feature List

| Category | Methods | Description |
|----------|---------|-------------|
| Spacing | 90+ | Padding, margin, auto-margin |
| Colors | 200+ | Background, text colors |
| Typography | 60+ | Sizes, weights, alignment |
| Sizing | 50+ | Width, height, constraints |
| Decoration | 40+ | Borders, shadows, opacity |
| Layout | 30+ | Alignment, expansion |
| Flex | 20+ | Row, Column, gaps |
| Transform | 15+ | Rotate, scale, flip |
| Positioning | 10+ | Absolute positioning |
| Visibility | 6+ | Show, hide widgets |

**Total: 500+ extension methods**

---

## 🔗 Links

- **GitHub:** [awaitware/awaitware_ui_utilities](https://github.com/awaitware/awaitware_ui_utilities)
- **Issues:** [Report a bug](https://github.com/awaitware/awaitware_ui_utilities/issues)
- **Examples:** [View live examples](example/)
- **Full Docs:** [Complete API Reference](AWAITWARE_FLUTTER_COMPLETE_UI_UTILITIES.md)

---

## 💻 Run Examples

```bash
cd awaitware_ui_utilities/example
flutter run
```

Click the 📚 icon in the AppBar to see all examples!

---

**Made with ❤️ for Flutter Developers**

*v1.0.1 - A modern utility-first toolkit*
