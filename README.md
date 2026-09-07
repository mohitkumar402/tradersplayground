# TradersPlayground

> Flutter-based trading application exploring real-time market data, portfolio workflows, authentication, and interactive financial dashboards.

**Platform:** Flutter · Firebase · WebSockets

---

## Product

TradersPlayground is an experimental trading interface focused on the user experience around market data and trading workflows.

### Core capabilities

- Real-time stock data integration
- Interactive market dashboard
- Live updates through WebSockets
- Authentication
- Firebase-backed application data
- Trading-focused UI and workflows

---

## Architecture

```text
Flutter App
   │
   ├── Authentication
   ├── Market / Trading UI
   ├── Real-time updates
   │
   ▼
Firebase Services
   ├── Authentication
   ├── Firestore
   ├── Realtime Database
   └── Storage
```

---

## Stack

| Layer | Technology |
|---|---|
| Application | Flutter / Dart |
| Authentication | Firebase Auth |
| Database | Cloud Firestore / Realtime Database |
| Storage | Firebase Storage |
| Real-time | WebSockets |

---

## Getting Started

### Requirements

- Flutter SDK
- Dart SDK
- Firebase project

### Setup

```bash
git clone https://github.com/mohitkumar402/tradersplayground.git
cd tradersplayground
flutter pub get
flutter run
```

### Firebase configuration

Create a Firebase project and configure the Flutter application for the platforms you want to run. Keep Firebase credentials and production configuration out of source control.

---

## Project Direction

The project can evolve toward:

- Portfolio tracking
- Watchlists
- Advanced market analytics
- Order simulation
- Risk and performance metrics
- Stronger real-time data architecture

---

## Status

**Type:** Product / trading application experiment  
**Focus:** Real-time data + financial UI + mobile development

<p align="center"><strong>Explore. Build. Trade smarter.</strong></p>
