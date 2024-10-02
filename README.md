# Scalers Test App

**Scalers Test App** is a Flutter application that displays a list of job postings with job details, built using BLoC for state management. The app provides a clean architecture, integrates with various APIs, and is designed to be easily 

## Download the Demo APK From the Link
https://drive.google.com/file/d/1A5J8menKPDDn1UAQHUyEEqUg_uOjiV5T/view?usp=sharing

## Project Structure
```bash
  lib/
  │
  ├── core/                  # Core utilities and base classes
  ├── data/                  # Data sources, repositories, and models
  ├── domain/                # Business logic, use cases, and repositories
  ├── presentation/          # UI screens, BLoC, and widget tree
  │   ├── jobs/              # Job listing feature
  │   ├── job_details/       # Job details feature
  │   ├── resume/            # Resume feature
  │   └── setting/           # Setting feature
  └── main.dart              # Entry point of the application
```

## Features

- Job Listings: Browse a comprehensive list of available jobs with key details such as title, company, location, and job type.
- Job Details: Access in-depth information about each job, including company description, requirements, and benefits.
- Theming: Toggle between light and dark modes to suit your preference and enhance readability.
- Smooth Animations: Experience fluid transitions and interactive elements for an engaging user experience.

## Installation

1. Make sure you have Flutter installed on your machine. If not, follow the installation guide on the official [Flutter website](https://flutter.dev/docs/get-started/install).

2. Clone the repository using the following command:
    ```bash
    git clone https://github.com/OSS7/Scalers_Test.git
    ```

3. Navigate to the project directory:
    ```bash
    cd Scalers_Test
    ```

4. Install the dependencies:
    ```bash
    flutter pub get
    ```
5. Run the Application
    ```bash
    flutter run
    ```

## Run Tests
  The project includes basic widget tests. To run them, use the following command:

  ```bash
    flutter test
  ```
