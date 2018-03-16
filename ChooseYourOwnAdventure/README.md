# Choose Your Own Adventure Story

## Objectives
A “Choose Your Own Adventure” app using a Navigation Controller. 

“Choose Your Own Adventure” was a series of children’s books published primarily in the 80’s.  The books allowed readers to choose the direction of the story by skipping to different page numbers. Typically a page in the book would give the reader a short bit of the story, and offer two choices; something like this:

“You step out of the monorail and see a Tyrannosaurus Rex pulling a tire off the wrecked jeep. It doesn’t seem like it has noticed you!”

“If you decide to hide under the monorail turn to page 63.”

“If you decide to try to make it back to the control center turn to page 41.”

A similar experience is recreated in this application by allowing users to navigate between view controllers that show a snippet of a story, and then allows the user to choose between two story options by clicking buttons.

## Requirements

- [X] Must use a navigation controller
- [X] Root node View Controller of the navigation controller should contain a UITextField for the user to enter their name, a UITextView with the first part of the story, and two UIButtons that navigate to two different story nodes
- [X] Buttons should use the user's name (personalized story)
- [X] Each subsequent story node in the adventure should have a UITextView that give sthe story for the new node, and then two UIButtons that navigate to additional story nodes.
- [X] Top right navigation bar button to all of the story nodes that shows the text "Start Over". When the user clicks this button, the story should return to the first root story node.
- [X] Including the root story node, the app should have at least 4 story nodes.

(Attribution: Description quoted and adapted from Max Luttrell's assignment description)