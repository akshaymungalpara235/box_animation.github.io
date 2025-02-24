import 'dart:html' as html;
import 'package:box_animation/utils/constants/app_constants.dart';
import 'package:get/get.dart';

/// A controller for managing the animation of a square in response to user actions.
///
/// This controller handles the position, size, and animation state of the square
/// and updates the position dynamically when the browser window is resized.
class SquareAnimationController extends GetxController {
  /// The size of the square in pixels.
  var squareSize = 50.0;

  /// The current position of the square along the horizontal axis.
  var position = 0.0;

  /// Whether the square is currently animating.
  var isAnimating = false;

  /// The target position for the square's animation.
  var animateTo = AnimateTo.center;

  /// The width of the browser window.
  int get screenWidth => html.window.innerWidth ?? 0;

  /// The end position where the square should be placed on the right side.
  double get endPosition =>
      screenWidth - squareSize - AppConstants.screenPadding * 2;

  /// Returns `true` if the square is not at the start position.
  bool get isStart => position > 0;

  /// Returns `true` if the square is not at the end position.
  bool get isEnd => position < endPosition;

  @override
  void onInit() {
    super.onInit();

    // Set the initial position of the square to be centered.
    position = ((screenWidth - squareSize) / 2) - AppConstants.screenPadding;

    // Listen for window resize events and update the screen width dynamically.
    html.window.onResize.listen((event) {
      updateScreenWidth();
    });
  }

  /// Updates the position of the square when the screen width changes.
  ///
  /// This ensures that the square remains correctly positioned when the browser
  /// window is resized.
  void updateScreenWidth() {
    if (animateTo == AnimateTo.center) {
      position = ((screenWidth - squareSize) / 2) - AppConstants.screenPadding;
    } else if (animateTo == AnimateTo.end) {
      position = endPosition;
    }

    // Notify listeners of the updated state.
    update();
  }

  /// Animates the square to a specified position.
  ///
  /// The square moves to either the start, end, or center based on the
  /// [animateTo] parameter.
  void animateToPosition({required AnimateTo animateTo}) {
    this.animateTo = animateTo;
    isAnimating = true;

    if (animateTo == AnimateTo.start) {
      position = 0;
    } else if (animateTo == AnimateTo.end) {
      position = endPosition;
    }

    // Notify listeners of the updated state.
    update();
  }

  /// Sets whether the square is currently animating.
  ///
  /// This method updates the animation state and notifies listeners.
  void setAnimating(bool isAnimating) {
    this.isAnimating = isAnimating;

    // Notify listeners of the updated state.
    update();
  }
}
