# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.1] - 2024-12-01

### Changed
- Removed Tailwind CSS branding from package description and documentation
- Updated package description to focus on Awaitware UI Utilities as a standalone toolkit
- Improved example app with comprehensive UI demonstrations
- Updated all documentation to reflect modern utility-first approach

### Documentation
- Refreshed README with updated branding
- Updated library documentation comments
- Enhanced example application

## [1.0.0] - 2024-XX-XX

### Added

#### Core Features
- 500+ extension methods for Flutter widgets inspired by Tailwind CSS
- Chainable API for clean, readable UI code
- Zero dependencies (only requires Flutter SDK)
- Full Dart type safety with IDE autocomplete support

#### Extension Categories

**1. Spacing Extensions (90+ methods)**
- Padding utilities: `p0()` through `p96()` with directional variants (`px`, `py`, `pt`, `pr`, `pb`, `pl`)
- Margin utilities: `m0()` through `m96()` with directional variants (`mx`, `my`, `mt`, `mr`, `mb`, `ml`)
- Auto margin for centering: `mxAuto()`, `myAuto()`

**2. Color Extensions (200+ methods)**
- Background colors for all Material color shades: `bgRed50()` through `bgRed900()`, etc.
- Text colors for all Material color shades: `textRed50()` through `textRed900()`, etc.
- Support for: Red, Pink, Purple, Deep Purple, Indigo, Blue, Light Blue, Cyan, Teal, Green, Light Green, Lime, Yellow, Amber, Orange, Deep Orange, Brown, Grey, Blue Grey
- Special colors: `bgBlack()`, `bgWhite()`, `bgTransparent()`

**3. Typography Extensions (60+ methods)**
- Font sizes: `textXs()` (12px), `textSm()` (14px), `textBase()` (16px), `textLg()` (18px), `textXl()` (20px), `text2Xl()` (24px), `text3Xl()` (30px), `text4Xl()` (36px), `text5Xl()` (48px)
- Font weights: `fontThin()`, `fontLight()`, `fontNormal()`, `fontMedium()`, `fontSemibold()`, `fontBold()`, `fontBlack()`
- Text alignment: `textLeft()`, `textCenter()`, `textRight()`, `textJustify()`
- Text decoration: `underline()`, `lineThrough()`, `noDecoration()`
- Text overflow: `ellipsis()`, `clip()`, `fade()`
- Letter spacing: `trackingTighter()`, `trackingNormal()`, `trackingWider()`, etc.
- Line height: `leadingNone()`, `leadingTight()`, `leadingNormal()`, `leadingLoose()`
- Font styles: `italic()`, `notItalic()`

**4. Sizing Extensions (50+ methods)**
- Width utilities: `w0()` through `w96()`, `wFull()`, `wScreen()`
- Height utilities: `h0()` through `h96()`, `hFull()`, `hScreen()`
- Size utilities: `size0()` through `size96()` (equal width and height)
- Icon sizes: `size16()`, `size24()`, `size32()`, `size48()`, `size64()`
- Max width: `maxWXs()`, `maxWSm()`, `maxWMd()`, `maxWLg()`, `maxWXl()`, etc.
- Max height: `maxHScreen()`, `maxHFull()`
- Min width/height: `minWFull()`, `minHFull()`, `minHScreen()`

**5. Decoration Extensions (40+ methods)**
- Border radius: `rounded()`, `roundedSm()`, `roundedMd()`, `roundedLg()`, `roundedXl()`, `rounded2Xl()`, `rounded3Xl()`, `roundedFull()`
- Directional radius: `roundedTSm()`, `roundedRLg()`, etc.
- Borders: `border()`, `border2()`, `border4()`, `border8()`
- Border colors: `borderRed600()`, `borderBlue600()`, etc. (all Material colors)
- Directional borders: `borderT()`, `borderR()`, `borderB()`, `borderL()`
- Box shadows: `shadowSm()`, `shadow()`, `shadowMd()`, `shadowLg()`, `shadowXl()`, `shadow2Xl()`, `shadowNone()`
- Opacity: `opacity0()`, `opacity25()`, `opacity50()`, `opacity75()`, `opacity100()`

**6. Layout Extensions (30+ methods)**
- Alignment: `center()`, `alignTopLeft()`, `alignCenter()`, etc.
- Expansion: `expanded()`, `flexible()`, `expanded2()`, `expanded3()`
- Aspect ratios: `aspectSquare()`, `aspectVideo()`, `aspect16x9()`, `aspect4x3()`, etc.
- Constraints: `constrained()`, `unconstrained()`
- Scrolling: `scrollable()`, `scrollableX()`, `scrollableY()`
- Fitted box: `fitted()`, `contain()`, `cover()`, `fill()`, `scaleDown()`
- Clip behavior: `clipRect()`, `clipRRect()`, `clipOval()`, `clipPath()`

**7. Flex Extensions (20+ methods)**
- List to Row: `row()`, `rowReverse()`
- List to Column: `column()`, `columnReverse()`
- List to Stack: `stack()`
- List to Wrap: `wrap()`, `wrapSpacing()`
- Gap utilities: `gap()`, `gapV()`, `gapH()`
- Main axis alignment: `spaceBetween()`, `spaceAround()`, `spaceEvenly()`, `mainStart()`, `mainEnd()`, `mainCenter()`
- Cross axis alignment: `crossStart()`, `crossEnd()`, `crossCenter()`, `crossStretch()`

**8. Transform Extensions (15+ methods)**
- Rotation: `rotate45()`, `rotate90()`, `rotate180()`, `rotate270()`
- Scaling: `scale50()`, `scale75()`, `scale90()`, `scale95()`, `scale100()`, `scale105()`, `scale110()`, `scale125()`, `scale150()`
- Translation: `translateX()`, `translateY()`
- Flipping: `flipH()`, `flipV()`

**9. Positioning Extensions (10+ methods)**
- Absolute positioning: `absolute()`, `positioned()`
- Position utilities: `top0()`, `right0()`, `bottom0()`, `left0()`
- Fill positioning: `positionFill()`, `inset0()`

**10. Visibility Extensions (6+ methods)**
- Conditional visibility: `show()`, `hide()`
- Opacity-based: `visible()`, `invisible()`
- Offstage: `offstage()`
- Pointer events: `ignorePointer()`, `absorbPointer()`

#### Helper Class (`aw`)

**Widget Creators**
- `aw.text()` - Create Text widget
- `aw.container()` - Create Container widget
- `aw.box()` - Container with child
- `aw.icon()` - Create Icon widget

**Layout Builders**
- `aw.row()` - Create Row
- `aw.column()` - Create Column
- `aw.stack()` - Create Stack
- `aw.wrap()` - Create Wrap

**Spacing Helpers**
- `aw.spaceV()` - Vertical spacing
- `aw.spaceH()` - Horizontal spacing
- `aw.space1()` through `aw.space8()` - Tailwind-scale spacing

**Pre-styled Components**
- `aw.button()` - Styled button
- `aw.card()` - Card with shadow
- `aw.divider()` - Horizontal divider
- `aw.verticalDivider()` - Vertical divider

**Images**
- `aw.imageNetwork()` - Network image
- `aw.imageAsset()` - Asset image

**Utility Helpers**
- `aw.empty()` - Empty SizedBox
- `aw.expanded()` - Expanded widget
- `aw.center()` - Center widget
- `aw.padding()` - Padding widget

### Documentation
- Comprehensive README.md with examples
- Quick Start Guide
- Installation Guide
- Contributing Guide
- Publishing Checklist
- Complete API reference with 500+ utilities documented

### Examples
- Working example app demonstrating key features
- Code examples for all extension categories

### Performance
- Lightweight extensions with minimal overhead
- Optimized for production use
- Zero runtime dependencies

### Developer Experience
- Full IDE autocomplete support
- Type-safe API
- IntelliSense-friendly
- Clear error messages

---

## [Unreleased]

### Planned Features
- Animation utilities
- Gradient utilities
- Custom theme support
- Dark mode utilities
- Responsive utilities

---

**Note:** This is the initial release of Awaitware UI Utilities. Future updates will be documented here.

[1.0.1]: https://github.com/awaitware/awaitware_ui_utilities/releases/tag/v1.0.1
[1.0.0]: https://github.com/awaitware/awaitware_ui_utilities/releases/tag/v1.0.0
[Unreleased]: https://github.com/awaitware/awaitware_ui_utilities/compare/v1.0.1...HEAD
