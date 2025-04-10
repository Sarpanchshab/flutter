import 'package:firstproject/dart/class_ontap.dart';
import 'package:firstproject/dart/listfunction.dart';
import 'package:firstproject/dart/map_function.dart';
import 'package:firstproject/learning/core_ui_widget/image.dart';
import 'package:firstproject/learning/layout_widget/container.dart';
import 'package:firstproject/learning/layout_widget/expanded_&_flexible.dart';
import 'package:firstproject/learning/layout_widget/rows_&_column.dart';
import 'package:firstproject/learning/layout_widget/sizedbox.dart';
import 'package:firstproject/learning/layout_widget/spacer.dart';
import 'package:firstproject/learning/layout_widget/wrap_&_alignment.dart';
import 'package:firstproject/learning/pageview_with_dots.dart';
import 'package:firstproject/learning/splash_screen.dart';
import 'package:firstproject/learning/core_ui_widget/text.dart';
import 'package:firstproject/task/Instagram_card.dart';
import 'package:firstproject/learning/navigation_&_dialogs/bottom_navigation_bar.dart';
import 'package:firstproject/learning/navigation_&_dialogs/bottomsheet.dart';
import 'package:firstproject/task/coffee_cafe_1.dart';
import 'package:firstproject/learning/first_page.dart';
import 'package:firstproject/learning/display_widget/gridview.dart';
import 'package:firstproject/learning/input_widget/checkbox.dart';
import 'package:firstproject/learning/display_widget/listview.dart';
import 'package:firstproject/learning/display_widget/listviewbuilder.dart';
import 'package:firstproject/task/grofast/splashscreen_1.dart';
import 'package:firstproject/task/loginpage.dart';
import 'package:firstproject/learning/navigation_&_dialogs/snackbar.dart';
import 'package:firstproject/task/studentregistration.dart';
import 'package:firstproject/learning/navigator_push_page1.dart';
import 'package:firstproject/task/taskbutton.dart';
import 'package:firstproject/task/taskscreen/taskscreen.dart';
import 'package:firstproject/task/tasksession.dart';
import 'package:firstproject/learning/input_widget/textfield.dart';
import 'package:flutter/material.dart';
import 'learning/core_ui_widget/button.dart';
import 'learning/navigation_&_dialogs/drawer.dart';
import 'learning/navigation_&_dialogs/dialogbox.dart';
import 'learning/core_ui_widget/icon.dart';
import 'learning/display_widget/card.dart';
import 'learning/display_widget/expansion_tile.dart';
import 'learning/display_widget/listtile.dart';
import 'learning/display_widget/table_example.dart';
import 'learning/input_widget/dropdownbutton.dart';
import 'learning/input_widget/slider.dart';
import 'learning/input_widget/switch.dart';
import 'learning/layout_widget/stack.dart';
import 'learning/onboarding_page.dart';
import 'learning/pageview.dart';
import 'learning/stateful_widget.dart';
import 'learning/textfield.dart';
import 'task/icon_card_image.dart';
import 'learning/form_validation.dart';
import 'learning/input_widget/radiobox.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),

      //Learning Page Calling

      // home: FirstPage()
      // home: TextPage(),
      // home: IconPage(),
      // home: ImagePage()
      // home: Button()

      // home:ContainerExample()
      // home: RowColumnExample()
      // home: StackWidget()
      // home: ExpandedFlexibleExample(),
      // home: WrapAlignExample(),
      // home: SizedBoxExample(),
      // home: SpacerExample(),

      // home: TextFieldExample(),
      // home: CheckboxExample()
      // home: RadioButtonExample(),
      // home: DropdownExample(),
      //   home: SwitchExample()
      //   home: SliderExample()

        // home: ImageCardExample()
        // home: ListTileExample()
      // home: GridViewScreen(),
      // home: Listview()
      //  home:  listviewbuilder()
      //   home: TableExample()
      //   home: ExpansionTileExample()

      // home: DialogBox()
      // home: SnackBarExample()
      // home: BottomSheetExample()
      // home: bottomBar()

      //   home: ImageSliderPage()
      // home: ImageSliderPageWithDots(),

      // home: FormValidationWidget()
      // home: NavigatorPushPage1()
        // home: SplashScreen()
        // home: DrawerPage()
        // home: MyTextFieldPage()
        // home: StatefulWidgetExample()
      // home: OnboardingPage(),





      //Task Page Calling

      // home: FirstPage(),
      // home: HomePage()
      // home: InstagramCard()
      // home: loginpage()
      home: StudentRegistration(),
      // home: CoffeeCaffin()
      //   home: TaskButton()
      //   home: TaskSession()
      // home: CoffeeCaffin(),
      // home: GroFastSplashScreen()
      //   home: TaskScreen()

      //dart programming language
      // home:ClassOntap()
      // home:ListFunction()
      // home: MapFunction()

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Colors.teal,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        foregroundColor: Colors.amber,
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('You have pushed the button this many times:'),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Button',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
