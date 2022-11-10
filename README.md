# counter_7

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Assignment 7
### 1. Explain what is meant by stateless widget and stateful widget and explain the difference between them

Stateless widgets are widgets that cannot be changed, for example Icon, IconButton, and text. While stateful widgets are widgets that are dynamic or can change, for example changing variable values, colors, etc.

### 2. Mention what widgets you use in this project and explain their functions.

Scaffold : Base structure and styling in apllication
Row : Display Children on Horizontal format
Text : Display string
Appbar : Display toolbar widgets
Padding : For spacing

### 3. What is the function of setState()? Explain what variables can be affected by the function.

It serves to notify the framework that there are objects that have changed in the State, then it will re-build the Widget. The variable that will be affected is the variable that is replaced in the function (depending on what the function wants to change)

### 4. Explain the difference between const and final

You can use final to declare immutable variables whose value is unknown or unknown at compile time. Const can be used to declare immutable variables whose value must be constant and known at compile time, but this means that the value of the variable must be assigned directly.

### 5. Explain how you implement the checklist above.

a. Create the app using flutter create counter_7

b. Make a function for decrementing counter

c. Create a variable for storing ODD/EVEN and the color

d. Create a function if odd or even the color will be changed

e. Create the button and implement the bonus