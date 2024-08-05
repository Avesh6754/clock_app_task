# clock_app_task

A new Flutter project.
1. TextButton
A TextButton is a button in Flutter that displays text without any borders or elevation. It's typically used for less prominent actions.

Properties:

onPressed: A callback that is triggered when the button is pressed.
child: The widget to display inside the button, typically a Text widget.
style: Defines the button's visual properties (e.g., color, padding).
Example:

dart
Copy code
TextButton(
  onPressed: () {
    // Your action here
  },
  child: Text('Text Button'),
)
2. IconButton
An IconButton is a button that displays an icon and reacts to touches by filling with a color (ink splash).

Properties:

icon: The icon to display inside the button.
onPressed: A callback that is triggered when the button is pressed.
tooltip: A short description of the button's action (displayed when long-pressed).
Example:

dart
Copy code
IconButton(
  icon: Icon(Icons.add),
  onPressed: () {
    // Your action here
  },
  tooltip: 'Add',
)
3. ElevatedButton
An ElevatedButton is a button with a slight elevation above the surface, giving it a raised look.

Properties:

onPressed: A callback that is triggered when the button is pressed.
child: The widget to display inside the button, typically a Text widget.
style: Defines the button's visual properties (e.g., color, elevation).
Example:

dart
Copy code
ElevatedButton(
  onPressed: () {
    // Your action here
  },
  child: Text('Elevated Button'),
)
4. OutlinedButton
An OutlinedButton is a button that displays a border outline without any background color or elevation.

Properties:

onPressed: A callback that is triggered when the button is pressed.
child: The widget to display inside the button, typically a Text widget.
style: Defines the button's visual properties (e.g., color, border).
Example:

dart
Copy code
OutlinedButton(
  onPressed: () {
    // Your action here
  },
  child: Text('Outlined Button'),
)
5. FilledTonalButton
A FilledTonalButton is a button with a filled background color but without the elevation of an ElevatedButton.

Properties:

onPressed: A callback that is triggered when the button is pressed.
child: The widget to display inside the button, typically a Text widget.
style: Defines the button's visual properties (e.g., color, padding).
Example:

dart
Copy code
FilledTonalButton(
  onPressed: () {
    // Your action here
  },
  child: Text('Filled Tonal Button'),
)
6. Drawer
A Drawer is a panel that slides in from the side of the screen and is typically used for navigation.

Properties:

child: The widget to display inside the drawer, usually a ListView containing ListTile widgets.
elevation: The z-coordinate at which to place the drawer.
Example:

dart
Copy code
Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: <Widget>[
      DrawerHeader(
        child: Text('Drawer Header'),
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
      ),
      ListTile(
        title: Text('Item 1'),
        onTap: () {
          // Your action here
        },
      ),
      ListTile(
        title: Text('Item 2'),
        onTap: () {
          // Your action here
        },
      ),
    ],
  ),
)
7. FloatingActionButton
A FloatingActionButton is a circular button that floats above the UI, typically used for the primary action in an application.

Properties:

onPressed: A callback that is triggered when the button is pressed.
child: The widget to display inside the button, typically an Icon widget.
backgroundColor: The background color of the button.
tooltip: A short description of the button's action (displayed when long-pressed).
Example:

dart
Copy code
FloatingActionButton(
  onPressed: () {
    // Your action here
  },
  child: Icon(Icons.add),
  tooltip: 'Add',
)
These button widgets and the Drawer component are essential for building interactive UIs in Flutter, offering a variety of styles and use cases to fit different design needs.
<h1 align="center">Task</h1>
<p>
 
  <img src="https://github.com/user-attachments/assets/83aa772c-fd55-4972-a74b-a1f1f4fffa69" width="22%" Height="35%">
  <img src="https://github.com/user-attachments/assets/4cb8e6ec-7fe2-429d-90fb-c587e6d96b8d" width="22%" Height="35%">
   </p>
