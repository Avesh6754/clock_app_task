# clock_app_task


A brief description of what this project does and who it's for

# Flutter Widgets Guide
## TextButton
### Description
 TextButton is a simple button that displays text without any border or elevation. It is often used in places where a text-based clickable element is required without drawing too much attention.

### Usage
### dart

```bash
TextButton(
  onPressed: () {
    // Perform some action
  },
  child: Text('Text Button'),
)
```
# Properties
### onPressed :
Callback function called when the button is tapped.
### onLongPress: 
Callback function called when the button is long-pressed.
### style: 
Defines the button's visual properties like color, padding, shape, etc.
### child: 
Typically a Text widget that defines the button's label.
# IconButton
## Description
IconButton is a button that displays an icon. It is commonly used in toolbars, app bars, and other places where an icon alone can represent the action.

### Usage
### dart

```bash
IconButton(
  icon: Icon(Icons.favorite),
  onPressed: () {
    // Perform some action
  },
)
```
# Properties
### icon: 
The icon to display inside the button.
### onPressed: 
Callback function called when the button is tapped.
### tooltip: 
Text to display when the user long-presses the button (usually a brief description of the action).
### color: 
Color of the icon.
### iconSize: 
Size of the icon.
# ElevatedButton
## Description
ElevatedButton is a button that has a filled background and a shadow to create a sense of elevation. It is often used for primary actions.

### Usage
### dart
```bash
ElevatedButton(
  onPressed: () {
    // Perform some action
  },
  child: Text('Elevated Button'),
)
```
# Properties
### onPressed: 
Callback function called when the button is tapped.
### onLongPress: 
Callback function called when the button is long-pressed.
### style: 
Defines the button's visual properties like color, padding, shape, etc.
### child:
Typically a Text widget that defines the button's label.
# OutlinedButton
## Description
 OutlinedButton is a button with an outlined border. It is often used for secondary actions that are still important but less prominent.

### Usage
### dart
```bash
OutlinedButton(
  onPressed: () {
    // Perform some action
  },
  child: Text('Outlined Button'),
)
```
# Properties
### onPressed:
Callback function called when the button is tapped.
### onLongPress: 
Callback function called when the button is long-pressed.
### style:
Defines the button's visual properties like color, padding, shape, etc.
### child:
Typically a Text widget that defines the button's label.
# FilledTonalButton
## Description
FilledTonalButton is a button with a filled background that has a lower emphasis compared to ElevatedButton. It's suitable for medium emphasis actions.

### Usage
### dart
```bash
FilledTonalButton(
  onPressed: () {
    // Perform some action
  },
  child: Text('Filled Tonal Button'),
)
```
# Properties
### onPressed: 
Callback function called when the button is tapped.
### onLongPress: 
Callback function called when the button is long-pressed.
### style: 
Defines the button's visual properties like color, padding, shape, etc.
### child: 
Typically a Text widget that defines the button's label.
# Drawer
## Description
 Drawer is a panel that slides in from the side of the screen. It is often used for navigation purposes and can contain a list of items that the user can select.

### Usage
### dart
```bash
Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: <Widget>[
      DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Text(
          'Drawer Header',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
      ListTile(
        leading: Icon(Icons.message),
        title: Text('Messages'),
        onTap: () {
          // Update the state of the app
          // Then close the drawer
          Navigator.pop(context);
        },
      ),
      // Add more ListTiles here
    ],
  ),
)
```
# Properties
### child: 
Typically a ListView that contains the items to be displayed in the drawer.
### elevation: 
Elevation of the drawer.
### shape: 
Shape of the drawer.
# FloatingActionButton
## Description
FloatingActionButton is a circular button that floats above the content of the screen. It is often used for the primary action on a screen.

### Usage
### dart
```bash
FloatingActionButton(
  onPressed: () {
    // Perform some action
  },
  child: Icon(Icons.add),
)
```
# Properties
### onPressed: 
Callback function called when the button is tapped.
### child: 
Typically an Icon widget that defines the button's label.
### tooltip:
Text to display when the user long-presses the button (usually a brief description of the action).
### backgroundColor:
Background color of the button.
### elevation:
Elevation of the button.


<h1 align="center">Task</h1>
<p>
 
  <img src="https://github.com/user-attachments/assets/83aa772c-fd55-4972-a74b-a1f1f4fffa69" width="22%" Height="35%">
  <img src="https://github.com/user-attachments/assets/4cb8e6ec-7fe2-429d-90fb-c587e6d96b8d" width="22%" Height="35%">
   </p>

   <h1 align="center">Task2</h1>
 <h2 align="center"> 🔶🔸 Asynchronous Programming🔸🔶</h2>


## What is  Asynchronous Programming?
Asynchronous programming is a programming paradigm that allows tasks or operations to run independently and concurrently, without waiting for each other to complete before moving on to the next task. In traditional synchronous programming, tasks are executed one after another, and the program waits for each task to finish before proceeding to the next one.
## What is Future Class ?
In Dart, the Future class represents the result of an asynchronous operation, which is a computation that doesn't complete immediately. Futures are often used in asynchronous programming to handle long-running tasks without blocking the main thread. For example, you might use a future to get data from a server, query data from a database, read a file, or do complicated computational work. 
## What is Duration class & Future.delayed() constructor with Example ?
In Flutter, the Future.delayed constructor creates a future that runs its computation after a specified duration. The Duration class is used to specify the duration. The Future.delayed constructor takes two arguments.
### syntax
```bash
Future.delayed(Duration(seconds: 2), () { // code to be executed after 2 seconds });
```
### Example
```bash
import 'dart:io';

void main() async {
  stdout.write("Enter the number : ");
  int a = int.parse(stdin.readLineSync()!);
  await Future.delayed(
    Duration(seconds: 2),
    () => print(a),
  );
  if (a > 10) {
    print("$a is greater than 10 ");
  } else {
    print("$a is Less than 10 ");
  }
}

```
Future.delayed creates a future that completes after a specified duration, in this case, 2 seconds.

The await keyword is used to pause the execution of the main function until the future completes.

After 2 seconds, the lambda function () => print(a) is executed, which prints the value of a to the console.

The program prompts the user to enter a number. After reading and parsing the input, it waits for 2 seconds. Then, it prints the entered number to the console. Following that, it checks whether the number is greater than 10 or not and prints an appropriate message based on the result of this check.

## What is the Use of the async & await keyword?
In Flutter, async and await are used to perform asynchronous operations in a more readable and structured manner. 

The async keyword is used to mark a function as asynchronous. An asynchronous function can perform tasks that may take some time to complete, such as fetching data from a network or reading from a file. The async keyword allows the function to use the await keyword inside it.

The await keyword is used to pause the execution of an asynchronous function until a particular asynchronous operation is completed. It can only be used inside an async function. 

## What is Recursion ? With Example. 
The process in which a function calls itself directly or indirectly is called recursion and the corresponding function is called a recursive function.

### Example

``` bash
import 'dart:io';
import 'dart:async';

void main() async {
  timer();
}

void timer() async {
  DateTime clock = DateTime.now();
  await Future.delayed(
    Duration(seconds: 1),
    () => print("${clock.hour} : ${clock.minute} : ${clock.second}"),
  );
  clock = DateTime.now();
  timer();
}

```

### Importing Libraries

``` bash
import 'dart:io';
import 'dart:async';
```
dart:io is imported to allow for input/output operations, although it isn't used in this specific example.

dart:async is imported to work with asynchronous programming, including Future and await.

### Main Function
``` bash
void main() async {
  timer();
}
```
The main function is the entry point of the Dart program.

It calls the timer function, which is designed to print the current time every second.

### Timer Function
``` bash
void timer() async {
  DateTime clock = DateTime.now();
  await Future.delayed(
    Duration(seconds: 1),
    () => print("${clock.hour} : ${clock.minute} : ${clock.second}"),
  );
  clock = DateTime.now();
  timer();
}
```
### DateTime

DateTime.now() creates a DateTime object representing the current date and time. This is used to capture the current time.

clock.hour, clock.minute, and clock.second are properties of the DateTime object that provide the current hour, minute, and second, respectively.

### Async/Await
async keyword before the function definition indicates that the function contains asynchronous operations.

await keyword is used to pause the execution of the timer function until the Future completes.

Future.delayed(Duration(seconds: 1), () => print(...)) creates a future that completes after a delay of 1 second, then executes the provided lambda function to print the time.
### Recursion

Recursion is when a function calls itself to solve a problem. In this case, timer() calls itself at the end of its execution to create an infinite loop, causing it to repeatedly wait for 1 second and print the current time.

After printing the time, clock is updated with the current time again using DateTime.now().
The timer function is called again, creating an infinite loop where the time is printed every second.

### Full Code Description
The program sets up a timer function that prints the current time every second using asynchronous programming and recursion. It starts by calling timer in the main function. Inside timer, the current time is captured and printed after a 1-second delay. The function then updates the time and calls itself again, creating a continuous loop.

## Key Concepts
### DateTime:
 Used to capture and work with the current date and time.
### Async/Await:
 Used to handle asynchronous operations, allowing the function to wait for a future to complete before continuing execution.
### Recursion:
 A technique where a function calls itself, used here to create a repeating timer that prints the time every second.

 ## What is Timer class with example ?
 The Timer class in Dart can schedule background tasks to be run once or repeatedly after a specified duration. It can be used to count down from a duration and invoke a callback function when it reaches zero. A periodic timer can repeatedly count down the same interval. 
 ### Example
 ```bash
 import 'dart:io';
import 'dart:async';

void main() {
  Timer(Duration(seconds: 2), () => print("Hello Flutter"));
}

 ```
 ### Timer Class
The Timer class is part of the dart:async library. It is used to run a function after a specified delay.

### Timer Constructor
```bash
Timer(Duration(seconds: 2), () => print("Hello Flutter"));
```
Duration(seconds: 2): Specifies the delay before the timer fires, which is 2 seconds in this case.

() => print("Hello Flutter"): This is a callback function (a lambda function) that will be executed after the delay of 2 seconds.

## How the Timer Works
### Create Timer:
 When the Timer is instantiated, it starts counting down the specified duration (2 seconds).

### Wait: 
The program continues running, but after 2 seconds, the timer will fire.
### Execute Callback:
 Once the 2-second duration has elapsed, the callback function () => print("Hello Flutter") is executed, printing "Hello Flutter" to the console.

 ## What is Timer.periodic and use with Example?
In Dart, the Timer.periodic constructor creates a repeating timer that invokes a callback at a specified duration until it's canceled. This is useful for tasks that need to be executed repeatedly, like updating a counter on the user interface or scheduling regular updates. 

### Example
``` bash
import 'dart:io';
import 'dart:async';

void main() {
  DateTime clock = DateTime.now();
  Timer.periodic(
    Duration(seconds: 1),
    (timer) {
      print("${clock.hour} : ${clock.minute} : ${clock.second}");
      clock = DateTime.now();
    },
  );
}

```

### Main Function
```bash
void main() {
  DateTime clock = DateTime.now();
  Timer.periodic(
    Duration(seconds: 1),
    (timer) {
      print("${clock.hour} : ${clock.minute} : ${clock.second}");
      clock = DateTime.now();
    },
  );
}
```
The main function is the entry point of the Dart program.

A DateTime object named clock is created, initialized to the current date and time.

### Timer.periodic
Timer.periodic is a constructor of the Timer class that creates a repeating timer.

It takes two parameters: a Duration object specifying the interval between timer events, and a callback function to execute at each interval.

### Timer.periodic Parameters

### Duration: 
Duration(seconds: 1)

Specifies the interval for the periodic timer, which is 1 second in this case.
### Callback Function:
 (timer)
A function that is called every 1 second. The parameter timer is the Timer instance itself.

### Callback Function
```bash
(timer) {
  print("${clock.hour} : ${clock.minute} : ${clock.second}");
  clock = DateTime.now();
}
```
This anonymous function (or lambda) is executed every 1 second.

It prints the current hour, minute, and second of the clock object.

The clock object is then updated to the current date and time using DateTime.now().

## How Timer.periodic Works

### Create Timer: 
The Timer.periodic constructor creates a new timer that fires every 1 second.
### Callback Execution: 
Every second, the callback function is executed.
It prints the current time based on the clock object.
It updates the clock object to the current time.
### Repeat: 
This process repeats indefinitely, or until the timer is canceled.



<h1 align="center">Digital Clock</h1>

## Description

To create a digital clock app in Flutter that changes its background image based on the time of day, you can incorporate several features to enhance the functionality and user experience. Here’s a detailed description of the features you might want to include:

## Dynamic Background Image
### Feature Description:
The app changes its background image according to the time of day. 
### For example:

#### Morning (6 AM - 12 PM): Use a morning-themed image.

#### Afternoon (12 PM - 6 PM): Use an afternoon-themed image.

#### Evening (6 PM - 9 PM): Use an evening-themed image.

#### Night (9 PM - 6 AM): Use a night-themed image.
Implementation:

Use DateTime.now().hour to get the current hour.
Load different images based on the hour and update the background accordingly.
## Digital Clock Display
### Feature Description:
Display the current time in a digital format. You can format the time to show hours, minutes, and seconds, and optionally include AM/PM notation.

### Implementation:

Use the intl package to format the time.
Update the clock display every second to keep the time accurate.
## Real-Time Clock Update
Feature Description:
Ensure the time displayed is updated in real-time without needing user interaction.

### Implementation:

Use a Timer from the dart:async package to trigger updates every second.
Update the state of the clock and background image at regular intervals.
## Responsive Layout
### Feature Description:
Ensure that the clock and background image adapt to different screen sizes and orientations.

### Implementation:

Use responsive design principles and layout widgets like Center, Stack, and BoxFit.cover for the background image.
Ensure text size and layout adjust for different device sizes.
## Customizable Time Format
### Feature Description:
Allow users to choose between 12-hour and 24-hour time formats.

### Implementation:

Provide a setting option in the app (e.g., through a settings screen or a toggle switch).
Adjust the time formatting based on the user’s preference.
## Smooth Transitions
### Feature Description:
Make transitions between different background images smooth to enhance the visual experience.

### Implementation:

Use Flutter’s animation capabilities, such as AnimatedSwitcher or FadeTransition, to animate changes between background images.

## Localization and Internationalization
### Feature Description:
Support multiple languages and time formats based on the user’s locale.

### Implementation:

Use the flutter_localizations package to handle different languages and time formats.
Adjust the clock display and app text according to the user’s locale settings.





<h1 align="center">Digital Clock</h1>
<p>
 
  <img src="https://github.com/user-attachments/assets/db801d92-7615-43c1-85b5-0f50e54f2e04" width="22%" Height="35%">
  <img src="https://github.com/user-attachments/assets/c3ac1d19-fd16-4880-b82b-3adc0ab370ac" width="22%" Height="35%">
  <img src="https://github.com/user-attachments/assets/4a632de4-7610-4957-91e9-b535a779c16c" width="22%" Height="35%">
  <img src="https://github.com/user-attachments/assets/d3ec875d-4343-4232-81d5-127fb86e9e18" width="22%" Height="35%">
  <img src="https://github.com/user-attachments/assets/3268f70c-2d9c-4838-9cf9-bb381b49edf8" width="22%" Height="35%">
  <img src="https://github.com/user-attachments/assets/69ea5fcd-cc40-42ef-9453-1e0d4cafb6c5" width="22%" Height="35%">
   </p>

https://github.com/user-attachments/assets/be69bd78-e730-4a88-990a-620607b83eef

