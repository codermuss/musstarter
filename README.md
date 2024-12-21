# musstarter

A normal Flutter project template with a modular architecture designed for scalability and maintainability.

## Project Structure

```
lib/
├── app/
│   ├── bottomsheets/
│   ├── dialogs/
│   ├── locator/
│   └── router/
├── extensions/
├── interfaces/
├── localization/
│   ├── app_localizations/
│   └── locale_keys/
├── mixins/
│   └── viewmodel_supporter/
├── models/
│   ├── request/
│   ├── response/
│   └── view_state/
├── network/
│   ├── api/
│   ├── interface/
│   └── request_interceptor/
├── onboarding/
├── ui/
│   ├── bottom_sheets/
│   ├── components/
│   ├── styles/
│   └── themes/
└── home/
    ├── viewmodel/
    └── startUp/
```

## Directory Overview

### App
- `bottomsheets`: Contains bottom sheet implementations
- `dialogs`: Dialog implementations
- `locator`: Service locator for dependency injection
- `router`: Navigation and routing configuration

### Core Components
- `extensions`: Custom Dart extensions for enhanced functionality
- `interfaces`: Abstract interfaces and contracts
- `localization`: Internationalization support
  - `app_localizations`: App-wide localization settings
  - `locale_keys`: Translation keys

### Features
- `mixins`: Shared functionality through mixins
  - `viewmodel_supporter`: Support classes for ViewModels
- `models`: Data models
  - `request`: API request models
  - `response`: API response models
  - `view_state`: UI state models

### Networking
- `network`: Networking related code
  - `api`: API service implementations
  - `interface`: Network interface definitions
  - `request_interceptor`: Network request interceptors

### UI Components
- `ui`: User interface components
  - `bottom_sheets`: Reusable bottom sheets
  - `components`: Shared UI components
  - `styles`: Global styles and theming
  - `themes`: Theme configurations

### Modules
- `home`: Home module
  - `viewmodel`: Home screen ViewModels
  - `startup`: App startup logic
- `onboarding`: Onboarding module

## Getting Started

1. Clone the repository
```bash
git clone git@github.com:codermuss/musstarter.git
```

2. Install dependencies
```bash
flutter pub get
```

3. Run the app
```bash
flutter run
```

## Architecture
- Separation of concerns through modular architecture
- ViewModels for business logic
- Service locator pattern for dependency injection
- Interceptor-based networking
- Localization support built-in

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request
