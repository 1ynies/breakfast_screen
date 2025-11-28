# Breakfast App UI

A Flutter project showcasing a beautiful and clean user interface for a breakfast recipe or food ordering application. This project is a great example of how to build custom widgets, create horizontal list views, and structure a Flutter application for scalability.

## 📸 Screenshots

*(Add screenshots of the app's home screen here to give a visual representation of the UI.)*


*A placeholder for your app's screenshot. Replace `placeholder.png` with an actual image file in your project.*

---

## ✨ Features

- **Custom App Bar:** A clean app bar with leading and trailing icon buttons.
- **Styled Search Bar:** A search input field with a shadow, rounded corners, and prefix/suffix icons.
- **Horizontal Category List:** A scrollable horizontal list displaying food categories with custom card designs.
- **Horizontal Recommendation List:** A scrollable horizontal list showcasing recommended diet plans with images, details, and a call-to-action button.
- **Custom Widgets:** The UI is built using modular and reusable widgets for categories (`CategoryCard`) and recommendations (`RecommendationDietCard`).
- **Clean Code Architecture:** The project is structured with separate directories for models, widgets, and screens.
- **Custom Fonts and Icons:** Utilizes Google Fonts (`Manrope`) and SVG icons for a polished look.

---

## 🚀 Getting Started

Follow these instructions to get a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

You need to have the Flutter SDK installed on your machine. If you don't have it, you can find the installation guide here:
Flutter Official Documentation

### Installation

1.  **Clone the repository:**
    ```sh
    git clone <your-repository-url>
    ```

2.  **Navigate to the project directory:**
    ```sh
    cd breakfast_app
    ```

3.  **Install dependencies:**
    Run the following command to get all the required packages.
    ```sh
    flutter pub get
    ```

4.  **Run the application:**
    Connect a device or start an emulator and run the app.
    ```sh
    flutter run
    ```

---

## 🛠️ Technologies Used

- **Flutter** - The UI toolkit for building the application.
- **Dart** - The programming language used.
- **google_fonts** - For using custom fonts from Google Fonts.
- **flutter_svg** - For rendering SVG files as widgets.

---

## 📂 Project Structure

The project is organized into the following main directories:

```
lib
├── assets/              # Contains all static assets like images and SVGs
├── models/              # Contains the data models (CategoryModel, RecommendationModel)
├── Widgets/             # Contains reusable custom widgets (CategoryCard, RecommendationDietCard)
├── home.dart            # The main screen of the application
└── main.dart            # The entry point of the application
```

---

## 🔮 Future Improvements

- Implement functionality for the "View" button on recommendation cards.
- Add state management to handle user interactions and data flow.
- Implement the search and filter functionality.
- Build out the "Popular" section on the home screen.
- Add navigation to other screens from the app bar icons and cards.