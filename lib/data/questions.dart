import 'package:quiz_app/models/quiz_question.dart';

var questions = [
  QuizQuestion(
    'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion(
    'How are Flutter UIs built?',
    [
      'By combining widgets in code',
      'By combining widgets in a visual editor',
      'By defining widgets in config files',
      'By using XCode for iOS and Android Studio for Android',
    ],
  ),
  QuizQuestion(
    'What\'s the purpose of a StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestion(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuizQuestion(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
  QuizQuestion(
    'Which widget is used to create a list of scrollable items in Flutter?',
    [
      'ListView',
      'GridView',
      'Column',
      'Row',
    ],
  ),
  QuizQuestion(
    'How do you navigate between screens in Flutter?',
    [
      'Using Navigator class',
      'Using AppBar',
      'Using BottomNavigationBar',
      'Using Drawer',
    ],
  ),
  QuizQuestion(
    'Which method is called when a StatefulWidget is inserted into the tree?',
    [
      'initState()',
      'build()',
      'createState()',
      'dispose()',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the MaterialApp widget in Flutter?',
    [
      'To set up the material design style for the app',
      'To create a new material design app',
      'To provide a navigation stack for the app',
      'To initialize the app\'s state',
    ],
  ),
  QuizQuestion(
    'Which widget is used to display a grid of items in Flutter?',
    [
      'GridView',
      'ListView',
      'Column',
      'Row',
    ],
  ),
  QuizQuestion(
    'What is the primary function of the main() method in a Flutter app?',
    [
      'To run the app',
      'To define the app\'s layout',
      'To initialize the app\'s state',
      'To configure the app\'s theme',
    ],
  ),
  QuizQuestion(
    'How can you add padding to a widget in Flutter?',
    [
      'Using the Padding widget',
      'Using the Margin widget',
      'Using the Spacer widget',
      'Using the SizedBox widget',
    ],
  ),
  QuizQuestion(
    'Which widget is used to display a pop-up message in Flutter?',
    [
      'SnackBar',
      'Dialog',
      'Toast',
      'Notification',
    ],
  ),
  QuizQuestion(
    'What does the MaterialApp\'s home property do?',
    [
      'Specifies the widget to show first',
      'Sets the app\'s title',
      'Defines the app\'s theme',
      'Specifies the app\'s routes',
    ],
  ),
  QuizQuestion(
    'Which method is called when a widget is removed from the tree?',
    [
      'dispose()',
      'initState()',
      'build()',
      'createState()',
    ],
  ),
  QuizQuestion(
    'How do you handle user input in Flutter?',
    [
      'Using TextFields',
      'Using Listeners',
      'Using Buttons',
      'Using Widgets',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the MaterialApp\'s title property?',
    [
      'Sets the app\'s title',
      'Specifies the app\'s home widget',
      'Defines the app\'s theme',
      'Specifies the app\'s routes',
    ],
  ),
  QuizQuestion(
    'Which widget is used to create a bottom navigation bar in Flutter?',
    [
      'BottomNavigationBar',
      'AppBar',
      'TabBar',
      'NavigationBar',
    ],
  ),
  QuizQuestion(
    'What is the main purpose of the Scaffold widget in Flutter?',
    [
      'To provide a visual structure for the app',
      'To define the app\'s layout',
      'To initialize the app\'s state',
      'To set up the material design style for the app',
    ],
  ),
];
