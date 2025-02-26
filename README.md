# my_portfolio_spring

This repository contains the backend of my personal portfolio, built using **Spring Framework**. The project includes features like login functionality, user authentication, and navigation. **Updates are ongoing** as I continue to add new features and improve the portfolio. Stay tuned for regular enhancements!

## Features
- **Login functionality**: Users must log in with the username (`1234`) and password (`password`) to access the main page.
- **Main page access control**: Users attempting to directly access the main page (`/index`) without logging in will be redirected to the login page with a warning message.
- **Error handling**: If incorrect login credentials are entered, a warning message will appear (`Login failed`).
- **Logout functionality**: Users can log out by clicking the **Logout** red button in the top-right corner of the main page, which will redirect them back to the login page.

## Ongoing Updates
This project is **actively being developed**. Future updates will include new features, bug fixes, and other improvements. Please check back often for the latest changes!

## Project Structure
The project consists of the following files and directories:

- **.idea/**: Project configuration files.
- **src/**: Contains the Java files for controllers, services, and authentication logic.
- **target/**: Generated output folder after building the project.
- **HELP.md**: Helpful information and documentation.
- **mvnw**: Maven wrapper script for running the project on any environment.
- **mvnw.cmd**: Maven wrapper script for Windows environments.
- **pom.xml**: Maven configuration file for managing project dependencies and build process.

## How to Use
1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/my_portfolio_spring.git
   ```

2. Navigate to the project directory:
    ```bash
    cd my_portfolio_spring
    ```

3. Run the application using Maven:
    ```bash
    mvn spring-boot:run
    ```

4. Open the application in your browser at http://localhost:8081.

## Connection with Frontend

The backend provides login functionality, form validation, and user authentication, which the frontend interacts with. All login credentials are processed by Spring controllers that handle the logic for login and page redirection.

---
[Back to my website portfolio](https://github.com/JayIsThere/my_portfolio)

