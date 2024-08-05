# clock_app_task


# Project Title

A brief description of what this project does and who it's for

# Flutter Widgets Guide
## TextButton
### Description
#TextButton is a simple button that displays text without any border or elevation. It is often used in places where a text-based clickable element is required without drawing too much attention.

#Usage
#dart
#Copy code
```bash
TextButton(
  onPressed: () {
    // Perform some action
  },
  child: Text('Text Button'),
)
```
###Properties
#onPressed: Callback function called when the button is tapped.
#onLongPress: Callback function called when the button is long-pressed.
#style: Defines the button's visual properties like color, padding, shape, etc.
#child: Typically a Text widget that defines the button's label.
###IconButton
##Description
#IconButton is a button that displays an icon. It is commonly used in toolbars, app bars, and other places where an icon alone can represent the action.

#Usage
#dart
#Copy code
```bash
IconButton(
  icon: Icon(Icons.favorite),
  onPressed: () {
    // Perform some action
  },
)
```
###Properties
#icon: The icon to display inside the button.
#onPressed: Callback function called when the button is tapped.
#tooltip: Text to display when the user long-presses the button (usually a brief description of the action).
#color: Color of the icon.
#iconSize: Size of the icon.
###ElevatedButton
##Description
#ElevatedButton is a button that has a filled background and a shadow to create a sense of elevation. It is often used for primary actions.

#Usage
#dart
#Copy code
```bash
ElevatedButton(
  onPressed: () {
    // Perform some action
  },
  child: Text('Elevated Button'),
)
```
###Properties
#onPressed: Callback function called when the button is tapped.
#onLongPress: Callback function called when the button is long-pressed.
#style: Defines the button's visual properties like color, padding, shape, etc.
#child: Typically a Text widget that defines the button's label.
###OutlinedButton
##Description
#OutlinedButton is a button with an outlined border. It is often used for secondary actions that are still important but less prominent.

#Usage
#dart
#Copy code
```bash
OutlinedButton(
  onPressed: () {
    // Perform some action
  },
  child: Text('Outlined Button'),
)
```
###Properties
#onPressed: Callback function called when the button is tapped.
#onLongPress: Callback function called when the button is long-pressed.
#style: Defines the button's visual properties like color, padding, shape, etc.
#child: Typically a Text widget that defines the button's label.
###FilledTonalButton
##Description
#FilledTonalButton is a button with a filled background that has a lower emphasis compared to ElevatedButton. It's suitable for medium emphasis actions.

#Usage
#dart
#Copy code
```BASH
FilledTonalButton(
  onPressed: () {
    // Perform some action
  },
  child: Text('Filled Tonal Button'),
)
```
###Properties
#onPressed: Callback function called when the button is tapped.
#onLongPress: Callback function called when the button is long-pressed.
#style: Defines the button's visual properties like color, padding, shape, etc.
#child: Typically a Text widget that defines the button's label.
###Drawer
##Description
#Drawer is a panel that slides in from the side of the screen. It is often used for navigation purposes and can contain a list of items that the user can select.

#Usage
#dart
#Copy code
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
###Properties
##child: Typically a ListView that contains the items to be displayed in the drawer.
##elevation: Elevation of the drawer.
##shape: Shape of the drawer.
###FloatingActionButton
##Description
#FloatingActionButton is a circular button that floats above the content of the screen. It is often used for the primary action on a screen.

#Usage
#dart
#Copy code
```bash
FloatingActionButton(
  onPressed: () {
    // Perform some action
  },
  child: Icon(Icons.add),
)
```
###Properties
##onPressed: Callback function called when the button is tapped.
##child: Typically an Icon widget that defines the button's label.
##tooltip: Text to display when the user long-presses the button (usually a brief description of the action).
##backgroundColor: Background color of the button.
##elevation: Elevation of the button.
## Badges

<h1 align="center">Task</h1>
<p>
 
  <img src="https://github.com/user-attachments/assets/83aa772c-fd55-4972-a74b-a1f1f4fffa69" width="22%" Height="35%">
  <img src="https://github.com/user-attachments/assets/4cb8e6ec-7fe2-429d-90fb-c587e6d96b8d" width="22%" Height="35%">
   </p>
