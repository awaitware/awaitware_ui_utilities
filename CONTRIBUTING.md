# Contributing to Awaitware UI Utilities

Thank you for your interest in contributing to Awaitware UI Utilities! We welcome contributions from the community.

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (latest stable version)
- Git
- A GitHub account

### Setting Up Development Environment

1. **Fork the repository** on GitHub

2. **Clone your fork:**
```bash
git clone https://github.com/YOUR_USERNAME/awaitware_ui_utilities.git
cd awaitware_ui_utilities
```

3. **Add upstream remote:**
```bash
git remote add upstream https://github.com/awaitware/awaitware_ui_utilities.git
```

4. **Install dependencies:**
```bash
flutter pub get
cd example
flutter pub get
```

5. **Verify everything works:**
```bash
flutter test
cd example
flutter run
```

## 🔨 Development Workflow

### Creating a New Feature or Fix

1. **Create a new branch:**
```bash
git checkout -b feature/your-feature-name
# or
git checkout -b fix/your-bug-fix
```

2. **Make your changes**

3. **Test your changes:**
```bash
flutter test
flutter analyze
```

4. **Update examples if needed:**
```bash
cd example
# Add examples showcasing your new feature
```

5. **Commit your changes:**
```bash
git add .
git commit -m "feat: add new spacing utility"
# or
git commit -m "fix: resolve border radius issue"
```

We follow [Conventional Commits](https://www.conventionalcommits.org/):
- `feat:` - New features
- `fix:` - Bug fixes
- `docs:` - Documentation changes
- `refactor:` - Code refactoring
- `test:` - Test additions or changes
- `chore:` - Maintenance tasks

6. **Push to your fork:**
```bash
git push origin feature/your-feature-name
```

7. **Create a Pull Request** on GitHub

## 📝 Code Guidelines

### Extension Method Guidelines

1. **Follow Tailwind CSS naming** where applicable
2. **Use descriptive names** for non-Tailwind utilities
3. **Include documentation** with examples
4. **Keep methods simple** and focused on one task

Example:
```dart
/// Apply padding of 16px to all sides
///
/// Example:
/// ```dart
/// Container().p4() // 16px padding
/// ```
extension SpacingExtensions on Widget {
  Widget p4() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: this,
    );
  }
}
```

### Code Style

- Follow [Effective Dart](https://dart.dev/guides/language/effective-dart) guidelines
- Use `flutter format` to format your code
- Run `flutter analyze` and fix all warnings
- Add tests for new utilities when applicable

### Testing

Add tests for new features in the appropriate test file:

```dart
test('p4 applies 16px padding', () {
  final widget = Container().p4();
  expect(widget, isA<Padding>());
  // Add more specific assertions
});
```

## 📦 Project Structure

```
awaitware_ui_utilities/
├── lib/
│   ├── awaitware_ui_utilities.dart  # Main export file
│   └── src/
│       ├── aw.dart                   # Helper class
│       ├── spacing_extensions.dart   # Spacing utilities
│       ├── color_extensions.dart     # Color utilities
│       ├── typography_extensions.dart
│       └── ...                       # Other extension files
├── example/
│   └── lib/
│       └── main.dart                 # Example app
├── test/                             # Unit tests
├── README.md
├── INSTALLATION_GUIDE.md
├── QUICK_START.md
└── CONTRIBUTING.md
```

## 🎯 What to Contribute

### Good First Issues

- Add missing color shades
- Add new spacing utilities
- Improve documentation
- Add more examples
- Fix typos

### Feature Requests

Before starting work on a major feature:
1. Check existing issues and PRs
2. Open an issue to discuss the feature
3. Wait for maintainer feedback
4. Start implementation after approval

### Bug Reports

When reporting bugs:
1. Check if the issue already exists
2. Provide a minimal reproduction example
3. Include Flutter version and platform
4. Describe expected vs actual behavior

## ✅ Pull Request Checklist

Before submitting your PR, ensure:

- [ ] Code follows the project style guidelines
- [ ] All tests pass (`flutter test`)
- [ ] No analyzer warnings (`flutter analyze`)
- [ ] Code is formatted (`flutter format .`)
- [ ] Documentation is updated if needed
- [ ] Examples are added/updated if needed
- [ ] Commit messages follow conventional commits
- [ ] PR description clearly explains the changes

## 📚 Adding New Extension Categories

If adding a completely new category of extensions:

1. **Create a new file** in `lib/src/` (e.g., `animation_extensions.dart`)

2. **Export it** in `lib/awaitware_ui_utilities.dart`:
```dart
export 'src/animation_extensions.dart';
```

3. **Document it** in the main library documentation

4. **Add examples** in the example app

5. **Update** `AWAITWARE_FLUTTER_COMPLETE_UI_UTILITIES.md` with new utilities

## 🔍 Review Process

1. Maintainers will review your PR
2. Address any requested changes
3. Once approved, your PR will be merged
4. Your contribution will be included in the next release!

## 📄 License

By contributing, you agree that your contributions will be licensed under the MIT License.

## 💬 Getting Help

- **Questions?** Open a [Discussion](https://github.com/awaitware/awaitware_ui_utilities/discussions)
- **Bug?** Open an [Issue](https://github.com/awaitware/awaitware_ui_utilities/issues)
- **Feature idea?** Open an [Issue](https://github.com/awaitware/awaitware_ui_utilities/issues) for discussion

## 🎉 Recognition

Contributors will be:
- Listed in release notes
- Mentioned in the Contributors section
- Recognized in the community

Thank you for making Awaitware UI Utilities better! 🙏

---

*Made with ❤️ by the Flutter community*
