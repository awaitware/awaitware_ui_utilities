# The `aw` Prefix - Complete Guide

The `aw` utility class makes Awaitware UI Utilities even more powerful by providing convenient helper methods with better IDE discoverability.

## Why Use `aw`?

### 1. **Better Discoverability**
Just type `aw.` and your IDE will show you all available helpers with autocomplete.

### 2. **Cleaner Widget Creation**
```dart
// Traditional Flutter
Text('Hello World')

// With aw prefix - same result, better discovery
aw.text('Hello World')
```

### 3. **Combines Perfectly with Extensions**
```dart
aw.text('Hello')
  .text2Xl()
  .fontBold()
  .textBlue600()
  .textCenter()
```

### 4. **Quick Helpers for Common Patterns**
```dart
// Create a styled button in one line
aw.button('Click Me', onPressed: () {})

// Create a card with shadow
aw.card(child: YourWidget())
```

## Complete `aw` Reference

### Text & Typography

```dart
// Create text widget
aw.text('Hello World')
aw.text('Styled', style: TextStyle(...))

// Then chain with extensions
aw.text('Hello').text2Xl().fontBold().textBlue600()
```

### Containers & Boxes

```dart
// Empty container
aw.container()

// Container with properties
aw.container(width: 100, height: 100)

// Container with child (alias: box)
aw.box(child: Text('Content'))

// All support extension chaining
aw.container().w64().h64().bgBlue600().roundedXl()
```

### Layout Builders

```dart
// Row
aw.row([Widget1(), Widget2(), Widget3()])
aw.row([...], mainAxisAlignment: MainAxisAlignment.spaceBetween)

// Column
aw.column([Widget1(), Widget2(), Widget3()])
aw.column([...], crossAxisAlignment: CrossAxisAlignment.start)

// Stack
aw.stack([Background(), Foreground()])
aw.stack([...], alignment: Alignment.center)

// Wrap
aw.wrap([Chip1(), Chip2(), Chip3()])
aw.wrap([...], spacing: 8, runSpacing: 8)
```

### Spacing Helpers

```dart
// Vertical spacing
aw.spaceV(16)    // 16px vertical space
aw.spaceV(24)    // 24px vertical space

// Horizontal spacing
aw.spaceH(16)    // 16px horizontal space
aw.spaceH(24)    // 24px horizontal space

// Tailwind scale spacing
aw.space1()      // 4px
aw.space2()      // 8px
aw.space3()      // 12px
aw.space4()      // 16px
aw.space6()      // 24px
aw.space8()      // 32px
```

### Dividers

```dart
// Horizontal divider
aw.divider()
aw.divider(thickness: 2, color: Colors.grey)

// Vertical divider
aw.verticalDivider()
aw.verticalDivider(thickness: 2, color: Colors.grey)
```

### Icons & Images

```dart
// Icons
aw.icon(Icons.star)
aw.icon(Icons.favorite, size: 32, color: Colors.red)

// Then chain with extensions
aw.icon(Icons.star).size16().textBlue600()

// Network images
aw.imageNetwork('https://example.com/image.png')
aw.imageNetwork('url', width: 200, height: 200, fit: BoxFit.cover)

// Asset images
aw.imageAsset('assets/logo.png')
aw.imageAsset('assets/logo.png', width: 100, height: 100)

// Chain with extensions
aw.imageNetwork('url').aspectSquare().roundedXl()
```

### Buttons

```dart
// Basic button
aw.button('Click Me', onPressed: () {})

// Styled button
aw.button(
  'Submit',
  onPressed: () {},
  backgroundColor: Colors.blue.shade600,
  textColor: Colors.white,
  fontSize: 16,
  fontWeight: FontWeight.bold,
)
```

### Cards

```dart
// Basic card with shadow
aw.card(child: Text('Card content'))

// Customized card
aw.card(
  child: YourWidget(),
  padding: EdgeInsets.all(24),
  color: Colors.white,
  borderRadius: 16,
)
```

### Utility Widgets

```dart
// Empty/invisible widget
aw.empty()

// Expanded widget
aw.expanded(child: Container())
aw.expanded(child: Container(), flex: 2)

// Center widget
aw.center(child: Text('Centered'))

// Padding widget
aw.padding(
  child: Text('Padded'),
  padding: EdgeInsets.all(16),
)
```

## Real-World Examples

### Example 1: Profile Card

```dart
aw.card(
  padding: EdgeInsets.all(24),
  child: aw.column(
    [
      aw.icon(Icons.person, size: 64, color: Colors.blue.shade600),
      aw.spaceV(16),
      aw.text('John Doe').text2Xl().fontBold().textGray900().textCenter(),
      aw.spaceV(8),
      aw.text('Software Developer').textBase().textGray600().textCenter(),
      aw.spaceV(16),
      aw.button(
        'View Profile',
        onPressed: () {},
        backgroundColor: Colors.blue.shade600,
      ),
    ],
    crossAxisAlignment: CrossAxisAlignment.center,
  ),
)
```

### Example 2: Stats Dashboard

```dart
aw.column(
  [
    aw.text('Dashboard').text3Xl().fontBold().textGray900(),

    aw.spaceV(24),

    aw.wrap(
      [
        _buildStatCard('1,234', 'Users', Icons.people),
        _buildStatCard('\$5.6K', 'Revenue', Icons.attach_money),
        _buildStatCard('89', 'Orders', Icons.shopping_cart),
        _buildStatCard('+12%', 'Growth', Icons.trending_up),
      ],
      spacing: 16,
      runSpacing: 16,
    ),
  ],
  crossAxisAlignment: CrossAxisAlignment.start,
).p4()

Widget _buildStatCard(String value, String label, IconData icon) {
  return aw.card(
    child: aw.column(
      [
        aw.icon(icon, size: 32, color: Colors.blue.shade600),
        aw.spaceV(8),
        aw.text(value).text2Xl().fontBold().textGray900(),
        aw.text(label).textSm().textGray600(),
      ],
      crossAxisAlignment: CrossAxisAlignment.center,
    ),
  ).w40().aspectSquare();
}
```

### Example 3: Form Layout

```dart
aw.column(
  [
    aw.text('Sign Up').text3Xl().fontBold().textGray900(),

    aw.spaceV(8),

    aw.text('Create your account').textBase().textGray600(),

    aw.spaceV(24),

    TextField(decoration: InputDecoration(labelText: 'Email')),

    aw.spaceV(16),

    TextField(
      decoration: InputDecoration(labelText: 'Password'),
      obscureText: true,
    ),

    aw.spaceV(24),

    aw.button(
      'Create Account',
      onPressed: () {},
      backgroundColor: Colors.green.shade600,
    ).wFull(),

    aw.spaceV(16),

    aw.divider(),

    aw.spaceV(16),

    aw.row(
      [
        aw.text('Already have an account?').textSm().textGray600(),
        aw.spaceH(8),
        aw.text('Sign In').textSm().textBlue600().fontSemibold(),
      ],
    ),
  ],
  crossAxisAlignment: CrossAxisAlignment.stretch,
).p6().bgWhite().roundedXl().shadowLg()
```

### Example 4: Product Grid

```dart
aw.wrap(
  [
    _buildProductCard('Product 1', '\$29.99'),
    _buildProductCard('Product 2', '\$39.99'),
    _buildProductCard('Product 3', '\$49.99'),
    _buildProductCard('Product 4', '\$59.99'),
  ],
  spacing: 16,
  runSpacing: 16,
)

Widget _buildProductCard(String name, String price) {
  return aw.column(
    [
      aw.container()
        .w48()
        .h48()
        .bgGray200()
        .roundedT(),

      aw.column(
        [
          aw.text(name).textLg().fontSemibold().textGray900(),
          aw.spaceV(4),
          aw.text(price).textXl().fontBold().textGreen600(),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ).p4(),
    ],
    crossAxisAlignment: CrossAxisAlignment.stretch,
  ).bgWhite().roundedXl().shadowMd();
}
```

## Combining Both Approaches

You can mix and match `aw` helpers with regular Flutter widgets and extensions:

```dart
Column(
  children: [
    aw.text('Title').text2Xl().fontBold(),
    aw.spaceV(16),
    Text('Regular Flutter Text').textBase().textGray600(),
    aw.spaceV(16),
    aw.button('Action', onPressed: () {}),
  ],
)
```

## Best Practices

### DO ✅

```dart
// Use aw for widget creation and discovery
aw.text('Hello').text2Xl().fontBold()

// Use aw spacing helpers
aw.spaceV(16)

// Use aw for quick layouts
aw.column([Widget1(), Widget2()])

// Combine with extensions
aw.container().p4().bgBlue600().roundedXl()
```

### DON'T ❌

```dart
// Don't overthink it - both work fine!
Text('Hello').text2Xl()  // This is perfectly fine
aw.text('Hello').text2Xl()  // So is this

// Use whichever feels more natural
```

## IDE Integration

### VS Code
Type `aw.` and press `Ctrl+Space` to see all helpers

### Android Studio / IntelliJ
Type `aw.` and autocomplete will show all available methods

### Quick Access
Set up code snippets:
- `awt` → `aw.text('')`
- `awc` → `aw.container()`
- `awb` → `aw.button('', onPressed: () {})`

## Summary

The `aw` prefix gives you:

✅ **Better discoverability** - Type `aw.` and see everything
✅ **Cleaner code** - Quick helpers for common patterns
✅ **Full compatibility** - Works with all extensions
✅ **IDE support** - Complete autocomplete and IntelliSense
✅ **Flexibility** - Use it when it helps, skip it when it doesn't

**Choose what works best for you!** Both approaches are fully supported and can be mixed freely.

---

**Next:** Check out the [example app](example/lib/aw_prefix_example.dart) to see everything in action!
