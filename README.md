# slash_app
# Responsive Home Screen Flutter Project

This Flutter project implements a responsive UI for the Home Screen that adapts seamlessly to both mobile and web platforms. The implementation follows clean architecture principles and utilizes the MVVM pattern with Bloc or Cubit for state management. The UI design is based on the provided Figma design and dummy data.

## Requirements

- **Architecture**: Follow clean architecture principles and MVVM pattern.
- **State Management**: Use Bloc or Cubit for state management.
- **UI**: Ensure the UI is responsive using appropriate layout widgets.
- **Data**: Fetch and display data from the provided dummy data.
- **Design**: Maintain design consistency as per the Figma design provided.

## Technical Details

### Responsive Design

- Use `LayoutBuilder`, `MediaQuery`, and other responsive layout widgets.
- Implement breakpoints for different screen sizes to adjust the layout accordingly.

### Flutter Widgets

- **Mobile Layout**: Use `ListView`, `Column`, or `SingleChildScrollView`.
- **Web Layout**: Use `GridView`, `Row`, or `Expanded`.

### Architecture

- Follow clean architecture principles to structure the code.
- Implement the MVVM pattern to separate concerns.

### State Management

- Use Bloc or Cubit for managing state across the application.

## Getting Started

### Prerequisites

- Flutter SDK
- Dart SDK
- IDE (Android Studio, VS Code, etc.)

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/Nardo2002/slash

2. **Navigate to the project directory:**
    ```bash
    cd slash

3. **Install dependencies**
    ```bash
    flutter pub get

### Running the project

1. **for mobile:**
    ```bash
    flutter run

2. **for web:**
    ```bash
    flutter run -d chrome

### Project Structure
    lib/
    |-- data/
    |   |-- models/
    |   |-- repositories/
    |-- domain/
    |   |-- entities/
    |   |-- usecases/
    |-- presentation/
    |   |-- bloc/
    |   |-- screens/
    |   |-- widgets/
    |-- main.dart




