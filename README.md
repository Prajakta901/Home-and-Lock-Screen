# Home and Lock Screen

A Flutter app that recreates a themed home screen and a multi-page lock screen using bundled image assets. It is an **Android-runnable interface** and can be launched on an Android emulator or a connected Android device.

## Screens

- **Home screen:** Displays a full-screen image. Swipe up to open the lock screen.
- **Lock screen:** Shows three horizontally swipeable pages with image-based layouts. A page indicator shows the current page, and a row of image shortcuts appears at the bottom.

The home screen is implemented in `lib/main.dart`; the lock screen is implemented in `lib/page.dart`. Images used by the screens are stored in `lib/asset/` and listed in `pubspec.yaml`.

## Requirements

- Flutter SDK with Dart **3.10.7 or later**, as specified in `pubspec.yaml`
- Flutter SDK with Android support configured
- An Android emulator or a connected Android device with USB debugging enabled

## Run the app

Open a terminal in this project directory (the directory containing `pubspec.yaml`). Start an Android emulator or connect an Android device, then run:

```bash
flutter pub get
flutter run
```

To see available devices and choose an Android emulator or device:

```bash
flutter devices
flutter run -d <device-id>
```

In VS Code, open this project directory, start an emulator or connect a device, then select **Run > Start Debugging** (or press **F5**). If prompted, choose the Flutter launch configuration.

## Project files

```text
lib/
  main.dart       # App entry point and home screen
  page.dart       # Swipeable lock-screen pages
  asset/          # Images displayed in the app
pubspec.yaml      # Flutter package and asset configuration
```
