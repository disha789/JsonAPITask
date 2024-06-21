# API Handling with Generics and MVVM Architecture

## Project Description

This project demonstrates the use of generics in API handling and MVVM architecture. It features five buttons, each triggering a different API call. The responses are displayed using various UI elements such as TableView and StackView. 

### Key Features
- **Single API Handler:** Utilizes a single, generic API handler for all API calls.
- **MVVM Architecture:** Implements the MVVM architecture to manage the application's data and business logic.
- **View Models and View Controllers:** Contains five distinct view models, each with its own view controller.
- **Different Data Models:** Each API call handles different types of data models.
- **UI Components:** Uses TableView cells to present data in a structured format.

## Demonstration
https://github.com/disha789/JsonAPITask/assets/49581479/ac64cf98-58a8-46e7-b2a4-6b1ef94a3a6b
https://github.com/disha789/JsonAPITask/assets/49581479/55625e4d-97c5-44fb-a3c2-b6ed16b470e1

## Table of Contents
- [Installation](#installation)
- [Usage](#usage)
- [Project Structure](#project-structure)
- [APIs](#apis)
- [Contributing](#contributing)
- [License](#license)

## Installation
1. Clone the repository:
    ```sh
    git clone https://github.com/disha789/JsonAPITask.git
    ``` 
2. Navigate to the project directory:
    ```sh
    cd JsonAPITask
    ```
3. Open the project in Xcode:
    ```sh
    open JsonAPITask.xcodeproj
    ```
4. Install dependencies (if any):
    ```sh
    pod install
    ```
5. Build and run the project:
    ```sh
    Cmd + R
    ```

## Usage
1. **Home Screen:** You'll find five buttons, each corresponding to a different API call.
2. **Data Display:** The data retrieved from the APIs will be displayed in TableView or StackView, depending on the specific API.
3. **First Button:** Fetches and displays information about 10 different users.
4. **Second Button:** Retrieves and displays information about a single user.
5. **Third Button:** Fetches and displays movie data.
6. **News Feed:** The fourth button fetches and displays a news feed.
7. **Recipes:** The fifth button fetches and displays recipes for meals.

## Project Structure
- **APIHandler.swift:** A generic API handler used for making all API calls.
- **View Models:** Five distinct view models, each responsible for managing data for a specific API call.
- **View Controllers:** Five corresponding view controllers to handle the UI logic.
- **TableView Cells:** Custom TableView cells to display the data in a structured format.
- **Data Models:** Different data models to parse the responses from various APIs.

## APIs
1. **API 1:** Fetches and displays information about 10 different users.
2. **API 2:** Retrieves and displays information about a single user.
3. **API 3:** Fetches and displays movie data.
4. **API 4:** News feed API, retrieving and displaying the latest news.
5. **API 5:** Recipes API, fetching and displaying meal recipes.

## Contributing
Contributions are welcome! Please follow these steps:
1. Fork the project.
2. Create a feature branch:
    ```sh
    git checkout -b feature/YourFeature
    ```
3. Commit your changes:
    ```sh
    git commit -m 'Add some feature'
    ```
4. Push to the branch:
    ```sh
    git push origin feature/YourFeature
    ```
5. Open a pull request.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

