# Robot Framework Automation for Booking Appointment

This project contains automated tests for booking appointments using Robot Framework with Behavior-Driven Development (BDD) practices.

## Project Structure

The project is organized as follows:

project/ ├── resources/ │ ├── keywords/ │ │ └── booking_keywords.robot │ ├── locators/ │ │ └── appointment_locators.robot ├── tests/ │ ├── feature_files/ │ │ └── booking.feature │ └── testFilesUsingBDD/ │ └── booking_test.robot

- **resources/keywords/**: Contains reusable keywords for booking appointment functionality.
- **resources/locators/**: Contains locators used in the test cases.
- **tests/feature_files/**: Contains BDD feature files describing the test scenarios.
- **tests/testFilesUsingBDD/**: Contains the Robot Framework test cases that implement the scenarios defined in the feature files.

## Installing Dependencies

To get started with the project, follow these steps:

### Download and Install Python

- Download the latest version of Python from [Python's official website](https://www.python.org/downloads/).
- Install Python, ensuring that the option to add Python to your environment variables is checked.

### Verify Python Installation

Open Command Prompt and verify the installation:

```bash
python --version
pip --version
```

### Install Required Python Libraries
Install Robot Framework and its dependencies:
```
pip install robotframework
pip install selenium
pip install robotframework-seleniumlibrary
pip install pymysql
pip install robotframework-databaselibrary
```
### Verify the installation:
```
robot --version
rebot --version
pip show robotframework
```
### Install PyCharm and Configure Libraries
- Download and install PyCharm Community Edition.
- Launch PyCharm and create a new project.
- Navigate to Settings and then Python Interpreter.
- Click the + button to add the following libraries:
```
Selenium
RobotFramework
RobotFramework-SeleniumLibrary
PyMySQL
RobotFramework-DatabaseLibrary
```
### Set Up Chrome WebDriver
Check your Chrome version and download the corresponding ChromeDriver from ChromeDriver's website.
Extract chromedriver.exe and place it in the following path based on your system:
```
C:\Users\Farasat Aziz\AppData\Local\Programs\Python\Python310\Scripts
```
### Install Intellibot Plugin for PyCharm
Download the Intellibot plugin from the GitHub repository.
- Install the plugin in PyCharm:
- Go to File > Settings > Plugins.
- Click Install Plugin from Disk and select the downloaded intellibot.jar.
- Save your project and restart PyCharm.

### Running the Tests
To run the tests, navigate to the testFilesUsingBDD directory and execute the following command:

```
robot .\testFilesUsingBDD\booking_test.robot
```
### Test Output
Upon running the tests, the following files will be generated:
```
log.html: Contains detailed logs of the test execution.
output.xml: The test execution results in XML format.
report.html: A summary report of the test execution.
```
### Git Repository
The project is available on GitHub:
Robot Framework Automation for Booking Appointment

### Contributing
If you would like to contribute to this project, please fork the repository and submit a pull request. Ensure that your changes are well-tested and documented.

### License
This project is licensed under the MIT License. See the LICENSE file for details.

### Contact
For any questions or feedback, please contact Farasat Ali Aziz.
