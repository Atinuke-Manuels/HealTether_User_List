# User List App

A simple Flutter app that fetches and displays a list of users from a remote API. The app demonstrates basic state management, network requests, and UI design.

---

## Features

- Fetches user data from a remote API.
- Displays user names, emails, and placeholder avatars in a list.
- Handles loading, error, and data states.
- Includes pull-to-refresh functionality.
- Implements a simple search feature to filter users by name.

---


## Getting Started

### Prerequisites

- Flutter SDK installed (version 3.0 or higher).
- An IDE (e.g., Android Studio, VS Code) with Flutter and Dart plugins.

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/Atinuke-Manuels/HealTether_User_List.git
   ```

2. Navigate to the project directory:
   ```bash
   cd user_list
   ```

3. Install dependencies:
   ```bash
   flutter pub get
   ```

4. Run the app:
   ```bash
   flutter run
   ```

---

## API Used

The app fetches data from the following free API:

- **API URL**: [https://jsonplaceholder.typicode.com/users](https://jsonplaceholder.typicode.com/users)
- **Description**: Returns a list of users with their names, emails, and a placeholder avatar.

---

## Dependencies

- [http](https://pub.dev/packages/http): For making network requests.
- [provider](https://pub.dev/packages/provider): For state management.
- [dotenv](https://pub.dev/packages/dotenv): For securing the api.

---

## Folder Structure

```
lib/
├── main.dart
├── models/
│   └── user_model.dart
├── providers/
│   └── user_provider.dart
├── screens/
│   └── home_screen.dart
├── services/
│   └── api_service.dart
├── widgets/
│   ├── error_widget.dart
│   ├── loading_widget.dart
│   └── user_list_item.dart
```

---

## How It Works

1. **Fetching Data**:
    - The app uses the `http` package to fetch user data from the API.
    - Data is parsed into a `User` model and stored in the `UserProvider`.

2. **State Management**:
    - The `UserProvider` class manages the app's state (loading, error, and data states).
    - The `Consumer` widget listens to state changes and updates the UI accordingly.

3. **UI**:
    - The `HomeScreen` displays a list of users using a `ListView.builder`.
    - A `RefreshIndicator` allows users to pull-to-refresh and fetch new data.
    - A search feature filters the list of users based on their names.

---


## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

- [JSONPlaceholder](https://jsonplaceholder.typicode.com/) for providing the free API.
- Flutter community for awesome packages and resources.
