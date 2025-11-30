import 'package:flutter/widgets.dart';

/// Tailwind CSS-inspired visibility utilities for Flutter
/// Provides show/hide and interaction control utilities
extension VisibilityExtensions on Widget {
  // ==================== VISIBILITY ====================
  Widget show([bool condition = true]) => Visibility(visible: condition, child: this);
  Widget hide([bool condition = true]) => Visibility(visible: !condition, child: this);

  Widget visibilityMaintainState({
    required bool visible,
    bool maintainState = true,
  }) =>
      Visibility(visible: visible, maintainState: maintainState, child: this);

  Widget offstage([bool offstage = true]) => Offstage(offstage: offstage, child: this);
  Widget ignorePointer([bool ignoring = true]) => IgnorePointer(ignoring: ignoring, child: this);
  Widget absorbPointer([bool absorbing = true]) => AbsorbPointer(absorbing: absorbing, child: this);
}
