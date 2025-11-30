# 📦 Publishing Checklist for pub.dev

This checklist helps ensure your package is ready for publication on [pub.dev](https://pub.dev).

## Pre-Publishing Checklist

### 1. Package Files ✓

- [x] `pubspec.yaml` - Complete with name, description, version, homepage, repository
- [x] `README.md` - Comprehensive documentation with examples
- [x] `CHANGELOG.md` - Version history (create if missing)
- [x] `LICENSE` - MIT or other open source license
- [x] `lib/` - All source code with proper exports
- [x] `example/` - Working example app
- [x] `.gitignore` - Excludes build files, IDE configs

### 2. Code Quality

Run these commands and ensure they all pass:

```bash
# Format code
flutter format .

# Analyze code (should have 0 issues)
flutter analyze

# Run tests (if you have tests)
flutter test

# Check package structure
flutter pub publish --dry-run
```

### 3. Documentation Review

- [ ] README.md includes:
  - [ ] Clear package description
  - [ ] Installation instructions
  - [ ] Quick start examples
  - [ ] Feature list
  - [ ] Links to full documentation
  - [ ] License badge
  - [ ] Pub.dev badge (update version)

- [ ] Code has proper documentation:
  - [ ] All public classes have doc comments
  - [ ] All extension methods have examples
  - [ ] Complex code has explanatory comments

### 4. pubspec.yaml Verification

Ensure your `pubspec.yaml` has:

```yaml
name: awaitware_ui_utilities
description: "Tailwind CSS-inspired UI utilities for Flutter. Build beautiful UIs faster with 500+ chainable extension methods. Write 60-70% less code!"
version: 1.0.0  # Update for each release
homepage: https://github.com/awaitware/awaitware_ui_utilities
repository: https://github.com/awaitware/awaitware_ui_utilities
issue_tracker: https://github.com/awaitware/awaitware_ui_utilities/issues
documentation: https://github.com/awaitware/awaitware_ui_utilities/blob/main/AWAITWARE_FLUTTER_COMPLETE_UI_UTILITIES.md

environment:
  sdk: ^3.9.2
  flutter: ">=1.17.0"

dependencies:
  flutter:
    sdk: flutter
```

**Important:**
- Description should be 60-180 characters
- Version follows [semantic versioning](https://semver.org/)
- All URLs are correct and accessible

### 5. Create CHANGELOG.md

Create a `CHANGELOG.md` file:

```markdown
# Changelog

All notable changes to this project will be documented in this file.

## [1.0.0] - 2024-01-XX

### Added
- Initial release
- 500+ extension methods for Flutter widgets
- Spacing utilities (padding, margin)
- Color utilities (background, text colors)
- Typography utilities (font size, weight, alignment)
- Sizing utilities (width, height, constraints)
- Decoration utilities (borders, shadows, opacity)
- Layout utilities (alignment, expansion, scrolling)
- Flex utilities (row, column, stack, wrap)
- Transform utilities (rotation, scaling, translation)
- Positioning utilities (absolute positioning)
- Visibility utilities (show/hide)
- `aw` helper class for better discoverability
- Comprehensive documentation and examples

### Features
- Tailwind CSS-inspired API
- Chainable extension methods
- Zero dependencies (Flutter only)
- Full type safety
- Production ready
```

### 6. Example App

Verify your example app:

```bash
cd example
flutter pub get
flutter run
```

- [ ] Example app runs without errors
- [ ] Example demonstrates key features
- [ ] Code is well-commented
- [ ] README in example/ directory explains the examples

### 7. Git Repository

- [ ] All changes committed
- [ ] Repository is pushed to GitHub
- [ ] Repository is public
- [ ] README renders correctly on GitHub
- [ ] All documentation files are accessible

```bash
git add .
git commit -m "chore: prepare for pub.dev release v1.0.0"
git push origin main
git tag v1.0.0
git push origin v1.0.0
```

### 8. Test Installation

Test installing from GitHub:

Create a new Flutter project and add to `pubspec.yaml`:

```yaml
dependencies:
  awaitware_ui_utilities:
    git:
      url: https://github.com/awaitware/awaitware_ui_utilities.git
      ref: main
```

Then:
```bash
flutter pub get
```

Verify it works correctly.

## Publishing Steps

### 1. Dry Run

First, do a dry run to catch any issues:

```bash
cd awaitware_ui_utilities
flutter pub publish --dry-run
```

Fix any errors or warnings reported.

### 2. Login to pub.dev

```bash
dart pub login
```

This will open a browser to authenticate with your Google account.

### 3. Publish

When everything is ready:

```bash
flutter pub publish
```

Review the information displayed and confirm by typing `y`.

### 4. Verify Publication

After publishing:

1. Visit https://pub.dev/packages/awaitware_ui_utilities
2. Check that all information displays correctly
3. Verify examples render properly
4. Test the "Install" tab instructions
5. Check the "Scores" tab for any issues

### 5. Update Badges

After successful publication, update README badges:

```markdown
[![pub package](https://img.shields.io/pub/v/awaitware_ui_utilities.svg)](https://pub.dev/packages/awaitware_ui_utilities)
[![Pub Points](https://img.shields.io/pub/points/awaitware_ui_utilities)](https://pub.dev/packages/awaitware_ui_utilities/score)
[![Popularity](https://img.shields.io/pub/popularity/awaitware_ui_utilities)](https://pub.dev/packages/awaitware_ui_utilities/score)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
```

## Post-Publishing

### 1. Announce

- [ ] Create a GitHub release
- [ ] Share on social media (Twitter, LinkedIn)
- [ ] Post on Flutter communities (Reddit, Discord)
- [ ] Write a blog post or article

### 2. Monitor

- [ ] Watch for issues on GitHub
- [ ] Respond to pub.dev reviews
- [ ] Track package analytics

### 3. Maintain

- [ ] Keep dependencies updated
- [ ] Address bug reports promptly
- [ ] Review and merge pull requests
- [ ] Release updates regularly

## Troubleshooting

### Common Issues

**"Package validation failed"**
- Run `flutter pub publish --dry-run` to see specific issues
- Ensure all required fields in pubspec.yaml are filled

**"Description too long/short"**
- Description must be 60-180 characters
- Keep it concise but descriptive

**"Homepage URL unreachable"**
- Verify all URLs in pubspec.yaml are accessible
- Use HTTPS URLs

**"Missing README"**
- Ensure README.md exists in the root directory
- Check it's properly formatted

**"License missing"**
- Add a LICENSE file to your repository
- MIT is recommended for open source

## Version Updates

For future releases:

1. Update version in `pubspec.yaml`
2. Update CHANGELOG.md with changes
3. Commit and tag the release
4. Run `flutter pub publish`

### Versioning Guide

- **Patch (1.0.X)**: Bug fixes, documentation updates
- **Minor (1.X.0)**: New features, backward compatible
- **Major (X.0.0)**: Breaking changes

## Resources

- [Publishing packages](https://dart.dev/tools/pub/publishing)
- [Pub.dev package layout conventions](https://dart.dev/tools/pub/package-layout)
- [Writing package pages](https://dart.dev/guides/libraries/writing-package-pages)
- [Verified publishers](https://dart.dev/tools/pub/verified-publishers)

---

**Good luck with your publication! 🚀**

*Remember: Quality over speed. Take your time to ensure everything is perfect.*
