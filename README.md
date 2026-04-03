# Portfolio — Jude Michael de Roma (Flutter Web)

Flutter Web portfolio for **Jude Michael de Roma**, styled from the Stitch project “Skills & Tech Depth” (dark, no-line surfaces, indigo accents, editorial scale), implemented with:

- MVVM-style clean architecture (`presentation/` + `domain/` + `data/`)
- `flutter_bloc` (Cubits as view-models) with **BlocSelector-first** rebuilds
- `freezed` + `json_serializable` for entities/models
- `auto_route` for routing + shell navigation
- `responsive_breakpoints` for responsive layouts (via Theme extension)
- Firebase-ready scaffold (Auth + Firestore contact submission)

## Requirements
- Flutter via **FVM** (pinned): `3.35.7`

## Run locally

```bash
cd portfolio_jude_michael_de_roma
fvm flutter pub get
fvm dart run build_runner build --delete-conflicting-outputs
fvm flutter run -d chrome
```

## Firebase setup (Web)
This repo boots even if Firebase is not configured. When Firebase is configured, the Contact form submits to Firestore collection `contacts`.

1. Create a Firebase project (Firebase Console)
2. Install FlutterFire CLI

```bash
dart pub global activate flutterfire_cli
```

3. Configure FlutterFire for this app (includes Web options)

```bash
cd portfolio_jude_michael_de_roma
flutterfire configure
```

Then rerun:

```bash
fvm flutter run -d chrome
```

## Project structure (high level)
- `lib/app/`: app root, routing, theme, DI
- `lib/core/`: shared constants/widgets/utils + firebase init helper
- `lib/features/<feature>/presentation|domain|data`: feature modules

## Notes on responsiveness
Breakpoints are resolved through a `ThemeExtension` (`ResponsiveBreakpointTheme<AppBreakpoint>`). You can query the current breakpoint with:
- `AppBreakpoint.of(context)` (see `lib/core/constants/app_breakpoints.dart`)

## Useful commands

```bash
fvm flutter analyze
fvm dart run build_runner build --delete-conflicting-outputs
```

# jude-michael-portfolio
# jude-michael-portfolio
