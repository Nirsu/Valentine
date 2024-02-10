import 'package:flutter/material.dart';

/// A utility extension for the [BuildContext].
extension BuildContextExtension on BuildContext {
  /// Returns the theme from the [BuildContext].
  ThemeData get theme => Theme.of(this);
}
