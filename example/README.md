# Awaitware UI Utilities Example

This example demonstrates the power and simplicity of Awaitware UI Utilities.

## Running the Example

```bash
cd example
flutter pub get
flutter run
```

## What's Demonstrated

This example app showcases:

1. **Header Section** - Text styling with sizes, weights, and colors
2. **Feature Cards** - Complex layouts built with utilities
3. **Button Examples** - Various button styles and colors
4. **Statistics Dashboard** - Grid layouts with gap utilities
5. **Product Card** - Real-world e-commerce card design
6. **Footer** - Simple text styling

## Key Takeaways

Notice how the code is:
- **Readable**: Each extension clearly describes what it does
- **Concise**: 60-70% less code than traditional Flutter
- **Maintainable**: Easy to modify and update
- **Type-Safe**: Full IDE autocomplete support

## Code Highlights

### Traditional Flutter vs Awaitware

**Before:**
```dart
Padding(
  padding: EdgeInsets.all(24),
  child: Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [BoxShadow(...)],
    ),
    child: Text(...),
  ),
)
```

**After:**
```dart
Text(...)
  .p6()
  .bgWhite()
  .roundedXl()
  .shadowLg()
```

### Layout Made Easy

**Before:**
```dart
Row(
  children: [
    Padding(
      padding: EdgeInsets.only(right: 8),
      child: Widget1(),
    ),
    Padding(
      padding: EdgeInsets.only(right: 8),
      child: Widget2(),
    ),
    Widget3(),
  ],
)
```

**After:**
```dart
[Widget1(), Widget2(), Widget3()].gap(8).row()
```

## Learn More

Check out the [main README](../README.md) for the complete API reference and more examples!
