import 'package:box_animation/square_animation/square_animation_controller.dart';
import 'package:box_animation/utils/constants/app_constants.dart';
import 'package:box_animation/utils/strings/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// A stateless widget that displays an animated square and controls its movement.
///
/// The square moves to the left or right when the corresponding button is pressed.
class SquareAnimationScreen extends StatelessWidget {
  /// Creates a [SquareAnimationScreen].
  const SquareAnimationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<SquareAnimationController>(
        // Initializes the controller when the widget is first built.
        init: SquareAnimationController(),
        builder: (squareAnimationController) {
          return Padding(
            padding: const EdgeInsets.all(AppConstants.screenPadding),
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Column(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          /// The animated square that moves based on user interaction.
                          AnimatedPositioned(
                            duration: const Duration(seconds: 1),
                            left: squareAnimationController.position,

                            /// The animated square widget.
                            child: Container(
                              width: squareAnimationController.squareSize,
                              height: squareAnimationController.squareSize,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                border: Border.all(),
                              ),
                            ),

                            /// Callback function triggered when the animation ends.
                            onEnd: () {
                              squareAnimationController.setAnimating(false);
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),

                    /// Row of buttons to move the square left or right.
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        /// Button to move the square to the left.
                        ElevatedButton(
                          onPressed: (!squareAnimationController.isAnimating &&
                                  squareAnimationController.isStart)
                              ? () => squareAnimationController
                                  .animateToPosition(animateTo: AnimateTo.start)
                              : null,
                          child: const Text(AppStrings.txtLeft),
                        ),
                        const SizedBox(width: 8),

                        /// Button to move the square to the right.
                        ElevatedButton(
                          onPressed: (!squareAnimationController.isAnimating &&
                                  squareAnimationController.isEnd)
                              ? () => squareAnimationController
                                  .animateToPosition(animateTo: AnimateTo.end)
                              : null,
                          child: const Text(AppStrings.txtRight),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
