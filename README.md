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

## Assignment 8
### Explain the difference between Navigator.push and Navigator.pushReplacement.

Navigator.push() is a push method that is used to add another route to the top of the current screen stack (stack), so that the new page is displayed above the previous page.
Navigator.pushReplacement Is a push method that adds a new route to the navigation stack and will delete the current route by removing the previous route once added.

### List all the widgets you used in this project and explain their functions.

Scaffold : Base structure and styling in apllication
Row : Display Children on Horizontal format
Text : Display string
Appbar : Display toolbar widgets
Padding : For spacing
SizedBox : A box with a designated size
Form : For forms
Icon : For icons
Column : Displays children on Vertical format
Drawer : For creating a drawer

### Name the types of events that exist in Flutter (example: onPressed).

onPressed, onChanged, AnimationEvent, ClipboardEvent, ErrorEvent

### Explain how the Navigator works in "switching" pages of a Flutter application.

Navigator works to manage elements with routes that display content pages in flutter.

The navigator itself consists of 3 parts, namely the stack, the pop method which will remove the topmost section and the navigation will display the previous page, and the push method which will navigate to a new page.

### Explain how you implemented the checking list above.

1. Open CMD
2. Change path to pbp-flutter-lab
3. Create a new file in lib called Form.dart for adding budget information
4. Create a new file in lib called drawer.dart for creating a drawer
5. Create a new file in lib called showdata.dart for showing the budget data
6. Code the files
7. Add, Commit, Push

## Assignment 9
### Can we fetch a JSON data without making a model first? If yes, is it better than making a model first?
Yes, you can retrieve JSON data without previously creating a model. From the JSON, we can create a dynamic map and retrieve the values in Python similarly to a dictionary (data[key]). However, it is not a good practice because it will be difficult to manage and error-prone because we won't know if a field is missing or if the fields are not what we anticipate. Having stated that, it is clear that creating a model first is preferable.

### Widgets used in this assignment

ListTile: Used to populate a ListView in Flutter. It contains title as well as leading or trailing icons.
Checkbox: Used to make a clickable checkbox.
Row: Display widgets in a Row.
TextButton: It is a simple Button without any border that listens for onPressed and onLongPress gestures.
FutureBuilder: Widget that builds itself based on the latest snapshot of interaction with a Future.

### How fetching data from json in flutter works

In the fetchwatchlist function, which calls the get function by HTTP instances, data is fetched through HTTP. The MyWatchlist object list is returned by the function. The function will be called by FutureBuilder, who will then await its outcome. After the data is fetched, the FutureBuilder returns ListView.builder, which creates ListTiles with the mapped data obtained from the fetchWatchlist function.

### Implementation
1. Create watchlist.dart
2. Create fetchwatchlist.dart
3. Create detailwatchlist.dart
4. Create Checkbox for Bonus