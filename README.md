# Box Animation

## Overview
This is a Flutter application that features a red square that moves to the left and right edges of the screen when the respective buttons are pressed. The movement is animated with a duration of 1 second.

## Features
- The square starts at the center of the screen.
- Moves to the right edge when the "Right" button is pressed.
- Moves to the left edge when the "Left" button is pressed.
- Maintains its edge position when the screen width changes.
- Animated movement with a 1-second transition.
- Buttons are disabled while the animation is in progress.
- Buttons are also disabled if the square is already at the corresponding edge.

## Installation & Setup
1. Clone this repository:
   ```sh
   git clone https://github.com/akshaymungalpara235/box_animation.github.io.git
   cd box_animation.github.io
   ```
2. Ensure you have Flutter installed. You can check with:
   ```sh
   flutter --version
   ```
3. Run the app:
   ```sh
   flutter run
   ```

## Deployment (GitHub Pages)
To deploy this app as a web application:
1. Build the Flutter web version:
   ```sh
   flutter build web
   ```
2. Move to the build directory:
   ```sh
   cd build/web
   ```
3. Deploy using GitHub Pages:
    - Push the contents of `build/web` to a GitHub repository.
    - Enable GitHub Pages in the repository settings.

## Technologies Used
- Flutter
- Dart

## License
This project is open-source and available under the MIT License.

