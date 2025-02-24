/// Defines the possible positions the square can animate to.
///
/// This enum is used to specify whether the square should move to the start,
/// center, or end of the screen.
enum AnimateTo {
  /// Moves the square to the leftmost position (start).
  start,

  /// Moves the square to the center of the screen.
  center,

  /// Moves the square to the rightmost position (end).
  end;
}

/// Holds constant values used throughout the application.
///
/// This class provides a centralized location for defining app-wide constants.
class AppConstants {
  /// The padding applied to the screen edges.
  ///
  /// This value ensures consistent spacing between elements and the screen borders.
  static const double screenPadding = 16;
}
