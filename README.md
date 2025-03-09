# TradersPlayground

TradersPlayground is a Flutter-based stock trading and management application that provides real-time stock market data, trend analysis, and trading insights.

## Features
- Real-time stock data fetching
- Interactive UI for stock tracking
- WebSockets integration for live updates
- Secure authentication
- User-friendly dashboard

## Installation
To run this project locally, follow these steps:

1. Clone the repository:
```bash
git clone https://github.com/mohitkumar402/tradersplayground.git
cd tradersplayground
```
2. Install dependencies:
```bash
flutter pub add firebase_core
flutter pub add firebase_auth
flutter pub add cloud_firestore
flutter pub add firebase_database
flutter pub add firebase_storage
```
3. Run the application:
```bash
flutter run
```

## Firebase Configuration
Make sure to configure your Firebase project properly:
- Create a Firebase project at [Firebase Console](https://console.firebase.google.com/).
- Add your Flutter app and download the `google-services.json` (Android) or `GoogleService-Info.plist` (iOS).
- Place the files in the appropriate project directories.
- Enable necessary Firebase services like Authentication, Firestore, and Storage.

## Contributions
Feel free to contribute by submitting a pull request or reporting issues.

## License
This project is licensed under the MIT License.

