## Moodle Mobile Application

## Project Overview
This project is a Flutter-based mobile application that replicates features of the University of Portsmouth (UoP) Moodle site. The application gives students a simplified mobile interface for viewing courses, accessing learning materials, managing assessments, and submitting assignments.

The aim of the project was to demonstrate the use of Flutter widgets, navigation, reusable data models, and state management to create a user-friendly mobile application.

## Features
- Dashboard displaying an overview of the application
- Navigation drawer for access to all pages
- A page showing my courses
- A page showing the selected course
- Calendar showing when you have assessments
- Weekly learning resources put into expandable sections
- Assessments page displaying upcoming and previous assessments
- Assignment submission page
- Simulated file upload
- Simulated assignment submission with status updates

## Technologies Used
- Flutter
- Dart
- Material Design
- Visual Studio Code
- Git
- GitHub

## Models
### CourseResource
Stores information about an individual learning resource including its icon, title and subtitle
### CourseWeek
Stores a collection of learning resources for a particular teaching week
### CourseSection
Represents sections within a course like Assessments, Teaching Block 1 and Teaching Block 2
### Assessment
Represents an assessment containing:
- The module name
- The assessment title
- The due date of the assessment
### Assignment
- The module name
- The assignment title
- The due date
- The submission status

## Navigation
This application uses a navigator routing system on flutter
e.g. Dashboard --> Assessments --> View Submission --> Assignment submission

## Running the Project
First clone the repository 
git clone <'repository'>

## Install the dependencies
flutter pub get

## Run the application
flutter run -d chrome

## Future Improvements
- Add an authentication system
- Have a more interactive calendar
- Add more modules
- Add some more colour to it so it's more appealing 