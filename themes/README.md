# Themes - Flutter Dark and Light Mode Toggle

This is a simple Flutter project that demonstrates how to toggle between dark and light modes in an app using the Provider package to manage the theme state.

## Features

Dark Mode and Light Mode: Switch between dark and light themes using a button.
Provider for State Management: Manages theme state using the ChangeNotifier and Provider package.
Custom Theming: Provides a custom theme with specific colors for each mode.
Responsive Design: Works seamlessly across devices and screen sizes.
Project Structure
The project is structured as follows:

## lib/

main.dart: The entry point of the app.
theme/theme_provider.dart: Contains the ThemeProvider class, which is used to toggle between light and dark modes.
theme/theme.dart: Defines the light and dark themes for the app.
pages/home_page.dart: The home page of the app where the theme toggle button and box are displayed.
components/box.dart: Custom widget that displays a colored box.
components/button.dart: Custom button widget that triggers the theme toggle.

## Setup

### Prerequisites

Ensure you have Flutter installed on your machine. You can follow the official Flutter installation guide: https://flutter.dev/docs/get-started/install
Dart SDK (comes bundled with Flutter)
Installation
Clone this repository:

```bash
Copy code
git clone https://github.com/dart_practice/themes
```

cd themes
Install dependencies:

```bash
Copy code
flutter pub get
```

Run the app on an emulator or physical device:

```bash
Copy code
flutter run
```

### How It Works

ThemeProvider Class
The ThemeProvider class is used to manage the current theme state. It extends ChangeNotifier and provides methods to toggle between light and dark themes. The notifyListeners() method is called to rebuild the widget tree whenever the theme changes.

## Toggling Theme

The theme is toggled when the user taps on a button. The button changes the app's theme by calling the toggleTheme method in the ThemeProvider. The MaterialApp widget listens to this change and updates the theme accordingly.
