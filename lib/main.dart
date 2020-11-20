import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:widgets_demo/examples/dropdown_button/main.dart' as drop_down;
import 'package:widgets_demo/examples/bottom_sheet/main.dart' as bottom_sheet;
import 'package:widgets_demo/examples/enabling_splash_screen/main.dart' as splash;
import 'package:widgets_demo/examples/expense_planner/main.dart' as expense;
import 'package:widgets_demo/examples/google_signin/main.dart' as google_signin;
import 'package:widgets_demo/examples/grid_layout/main.dart' as grid;
import 'package:widgets_demo/examples/handling_routes/screens//home.dart' as handle_route;
import 'package:widgets_demo/examples/handling_routes/screens/about.dart';
import 'package:widgets_demo/examples/image_network/main.dart' as img;
import 'package:widgets_demo/examples/navigator_drawer/screens/account.dart';
import 'package:widgets_demo/examples/navigator_drawer/screens/home.dart' as home;
import 'package:widgets_demo/examples/navigator_drawer/screens/settings.dart';
import 'package:widgets_demo/examples/infinite_list/main.dart' as infinite_list;
import 'package:widgets_demo/examples/load_local_image/main.dart' as local_image;
import 'package:widgets_demo/examples/load_local_json/main.dart' as local_json;
import 'package:widgets_demo/examples/simple_material_app/main.dart' as simple_mal;
import 'package:widgets_demo/examples/persist_key_value/main.dart' as persist;
import 'package:widgets_demo/examples/statefull_widget/main.dart' as state_full;
import 'package:widgets_demo/examples/stateless_widget/main.dart' as state_less;
import 'package:widgets_demo/examples/tip_calculator/main.dart' as tip_cal;
import 'package:widgets_demo/examples/unit_testing/main.dart' as unit;
import 'package:widgets_demo/examples/alert_dialouge/main.dart' as alert;
import 'package:widgets_demo/examples/bottom_nav/main.dart' as bottom_nav;
import 'package:widgets_demo/examples/custom_fonts/main.dart' as custom_fonts;
import 'package:widgets_demo/examples/edit_text/main.dart' as edit_text;
import 'package:widgets_demo/examples/firebase/main.dart' as firebase;
import 'package:widgets_demo/examples/gradient/main.dart' as gradient;
import 'package:widgets_demo/examples/http_get/main.dart' as http;
import 'package:widgets_demo/examples/using_interactiveviewer/main.dart' as viewer;
import 'package:widgets_demo/examples/list_view/main.dart' as list_view;
import 'package:widgets_demo/examples/snackbar/main.dart' as snackbar;
import 'package:widgets_demo/examples/stepper/main.dart' as stepper;
import 'package:widgets_demo/examples/tabs/main.dart' as tabs;
import 'package:widgets_demo/examples/theme/main.dart' as theme;
import 'package:widgets_demo/examples/pdf/main.dart' as pdf;
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Widgets Demo'),
      routes: <String, WidgetBuilder>{
        // Set named routes
        AboutPage.routeName: (BuildContext context) => AboutPage(),
        SettingsScreen.routeName: (BuildContext context) => SettingsScreen(),
        AccountScreen.routeName: (BuildContext context) => AccountScreen(),
      },
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
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
      appBar: AppBar( backgroundColor: Colors.purple,
        title: Text(widget.title,style: TextStyle(fontSize:20, color: Colors.white, fontWeight:FontWeight.w800)),
          leading: GestureDetector(
              onTap: () {
              },
              child: Icon(
                Icons.menu,  // add custom icons also
              )
          )
      ),
      body:
      //SingleChildScrollView(

        //child:
        Stack(
          children: <Widget>[
        ClipPath(
        clipper: WaveClipperOne(),
        child: Container(
          decoration:
          BoxDecoration(color:  Color(0xFFBE7066)),
          height: 250,
        ),
      ),
              Container(
                margin: EdgeInsets.only(top: 40.0),
                child: RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.display1,
                    children: [
                      TextSpan(text: "What are you \nreading ",
                          style: TextStyle(
                            //color: Color(0xFFF48A37)
                            color: Colors.white,
                          )

                      ),

                      TextSpan(
                          text: "today?",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                ),
              ),
          Container(
              margin: EdgeInsets.only(top: 250.0,left: 15),
              child:SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Container(
                      //color: Colors.orangeAccent,
                     height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color:Colors.purpleAccent,
                          shape: BoxShape.circle
                      ),
                      child: FlatButton(
                        textColor: Colors.white,
                        padding: EdgeInsets.all(20.0),
                        splashColor: Colors.purpleAccent,
                        child: Text("Bottom Sheet",textAlign: TextAlign.center,style: TextStyle(fontSize: 15),),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => bottom_sheet.MyApp()),
                          );
                          // Navigator.push(context, bottom_sheet.main());
                        },
                      ),
                    ),

                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color:Colors.purpleAccent,
                          shape: BoxShape.circle),
                      child: FlatButton(
                        textColor: Colors.white,
                        padding: EdgeInsets.all(15.0),
                        splashColor: Colors.purpleAccent,
                        child: Text("Dropdown\n  Sheet"),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => drop_down.MyApp()),
                          );
                          // Navigator.push(context, bottom_sheet.main());
                        },
                      ),
                    ),
                  ]
              ),
              SizedBox(height: 10,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[

                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color:Colors.purpleAccent,
                          shape: BoxShape.circle),
                      child: FlatButton(
                        textColor: Colors.white,
                        padding: EdgeInsets.all(20.0),
                        splashColor: Colors.purpleAccent,
                        child: Text("Embling  Splash\n Screen"),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => splash.MyApp()),
                          );
                          // Navigator.push(context, bottom_sheet.main());
                        },
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color:Colors.purpleAccent,
                          shape: BoxShape.circle),
                      child: FlatButton(
                        textColor: Colors.white,
                        padding: EdgeInsets.all(20.0),
                        splashColor: Colors.purpleAccent,
                        child: Text("Expense \n Planner"),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => expense.MyApp()),
                          );
                          // Navigator.push(context, bottom_sheet.main());
                        },
                      ),
                    )

                  ]
              ),
              SizedBox(height: 10,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color:Colors.purpleAccent,
                          shape: BoxShape.circle),
                      child: FlatButton(
                        textColor: Colors.white,
                        padding: EdgeInsets.all(20.0),
                        splashColor: Colors.purpleAccent,
                        child: Text("Google \n Signin"),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => google_signin.App()),
                          );
                          // Navigator.push(context, bottom_sheet.main());
                        },
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color:Colors.purpleAccent,
                          shape: BoxShape.circle),
                      child: FlatButton(

                        textColor: Colors.white,
                        padding: EdgeInsets.all(20.0),
                        splashColor: Colors.purpleAccent,
                        child: Text(" Grid \nLayout",  ),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => grid.MyApp()),
                          );
                          // Navigator.push(context, bottom_sheet.main());
                        },
                      ),
                    )

                  ]
              ),
              SizedBox(height: 10,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color:Colors.purpleAccent,
                          shape: BoxShape.circle),
                      child: FlatButton(
                        textColor: Colors.white,
                        padding: EdgeInsets.all(20.0),
                        splashColor: Colors.purpleAccent,
                        child: Text("Handle\n Route"),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => handle_route.HomePage()),
                          );
                          // Navigator.push(context, bottom_sheet.main());
                        },
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color:Colors.purpleAccent,
                          shape: BoxShape.circle),
                        child: FlatButton(
                          textColor: Colors.white,
                          padding: EdgeInsets.all(20.0),
                          splashColor: Colors.purpleAccent,
                          child: Text(" Image Network"),
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => img.MyApp()),
                            );
                            // Navigator.push(context, bottom_sheet.main());
                          },
                        ),
                    )


                  ]
              ),
              SizedBox(height: 10,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color:Colors.purpleAccent,
                          shape: BoxShape.circle),
                      child: FlatButton(
                        textColor: Colors.white,
                        padding: EdgeInsets.all(15.0),
                        splashColor: Colors.purpleAccent,
                        child: Text("Infinite List"),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => infinite_list.MyApp()),
                          );
                          // Navigator.push(context, bottom_sheet.main());
                        },
                      ),
                    ),

                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color:Colors.purpleAccent,
                          shape: BoxShape.circle),
                      child: FlatButton(
                        textColor: Colors.white,
                        padding: EdgeInsets.all(10.0),
                        splashColor: Colors.purpleAccent,
                        child: Text("Image Local"),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => local_image.MyApp()),
                          );
                          // Navigator.push(context, bottom_sheet.main());
                        },
                      ),
                    )

                  ]
              ),
              SizedBox(height: 10,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Container(

                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color:Colors.purpleAccent,
                          shape: BoxShape.circle),
                      child: FlatButton(
                        textColor: Colors.white,
                        padding: EdgeInsets.all(15.0),
                        splashColor: Colors.purpleAccent,
                        child: Text("Json Local"),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => local_json.MyApp()),
                          );
                          // Navigator.push(context, bottom_sheet.main());
                        },
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color:Colors.purpleAccent,
                          shape: BoxShape.circle),
                      child: FlatButton(
                        textColor: Colors.white,
                        padding: EdgeInsets.all(15.0),
                        splashColor: Colors.purpleAccent,
                        child: Text("Navigation\n\t  Drawer"),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => home.HomeScreen()),
                          );
                          // Navigator.push(context, bottom_sheet.main());
                        },
                      ),
                    ),

                  ]
              ),
              SizedBox(height: 10,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color:Colors.purpleAccent,
                          shape: BoxShape.circle),
                      child: FlatButton(
                        textColor: Colors.white,
                        padding: EdgeInsets.all(20.0),
                        splashColor: Colors.purpleAccent,
                        child: Text("Persist\n Key"),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => persist.MyHome()),
                          );
                          // Navigator.push(context, bottom_sheet.main());
                        },
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color:Colors.purpleAccent,
                          shape: BoxShape.circle),
                      child:  FlatButton(
                        textColor: Colors.white,
                        padding: EdgeInsets.all(20.0),
                        splashColor: Colors.purpleAccent,
                        child: Text("Simple Material\n App"),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => simple_mal.main()),
                          );
                          // Navigator.push(context, bottom_sheet.main());
                        },
                      ),
                    ),


                  ]
              ),
              SizedBox(height: 10,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color:Colors.purpleAccent,
                          shape: BoxShape.circle),
                      child: FlatButton(textColor: Colors.white,
                        padding: EdgeInsets.all(15.0),
                        splashColor: Colors.purpleAccent,
                        child: Text(" State Full\n \t  App"),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => state_full.MyButton()),
                          );
                          // Navigator.push(context, bottom_sheet.main());
                        },
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color:Colors.purpleAccent,
                          shape: BoxShape.circle),
                        child: FlatButton(
                          textColor: Colors.white,
                          padding: EdgeInsets.all(15.0),
                          splashColor: Colors.purpleAccent,
                          child: Text(" Sate  Less\n    App"),
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => state_less.MyApp()),
                            );
                            // Navigator.push(context, bottom_sheet.main());
                          },
                        ),
                    )

                  ]
              ),
              SizedBox(height: 10,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color:Colors.purpleAccent,
                          shape: BoxShape.circle),
                      child:  FlatButton(
                        textColor: Colors.white,
                        padding: EdgeInsets.all(15.0),
                        splashColor: Colors.purpleAccent,
                        child: Text("   \tTip \nCalculator"),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => tip_cal.TipCalculator()),
                          );
                          // Navigator.push(context, bottom_sheet.main());
                        },
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color:Colors.purpleAccent,
                          shape: BoxShape.circle),
                      child:  FlatButton(
                        textColor: Colors.white,
                        padding: EdgeInsets.all(20.0),
                        splashColor: Colors.purpleAccent,
                        child: Text("  Unit\nTesting"),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => unit.MyApp()),
                          );
                          // Navigator.push(context, bottom_sheet.main());
                        },
                      ),
                    )

                  ]
              ),
              SizedBox(height: 10,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color:Colors.purpleAccent,
                          shape: BoxShape.circle),
                      child:FlatButton(
                        textColor: Colors.white,
                        padding: EdgeInsets.all(20.0),
                        splashColor: Colors.purpleAccent,
                        child: Text("Alert\ndialog"),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => alert.MyHome()),
                          );
                          // Navigator.push(context, bottom_sheet.main());
                        },
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color:Colors.purpleAccent,
                          shape: BoxShape.circle),
                      child:FlatButton(
                        textColor: Colors.white,
                        padding: EdgeInsets.all(20.0),
                        splashColor: Colors.purpleAccent,
                        child: Text("Bottom\n  Nav"),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => bottom_nav.MyHome()),
                          );
                          // Navigator.push(context, bottom_sheet.main());
                        },
                      ),
                    ),

                  ]
              ),
              SizedBox(height: 10,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color:Colors.purpleAccent,
                          shape: BoxShape.circle),
                      child: FlatButton(
                        textColor: Colors.white,
                        padding: EdgeInsets.all(20.0),
                        splashColor: Colors.purpleAccent,
                        child: Text("Custom \n Fonts"),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => custom_fonts.main()),
                          );
                          // Navigator.push(context, bottom_sheet.main());
                        },
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color:Colors.purpleAccent,
                          shape: BoxShape.circle),
                      child: FlatButton(
                        textColor: Colors.white,
                        padding: EdgeInsets.all(20.0),
                        splashColor: Colors.purpleAccent,
                        child: Text("Edit Text"),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => edit_text.MyEditText()),
                          );
                          // Navigator.push(context, bottom_sheet.main());
                        },
                      ),
                    ),

                  ]
              ),
              SizedBox(height: 10,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color:Colors.purpleAccent,
                          shape: BoxShape.circle),
                      child:FlatButton(
                        textColor: Colors.white,
                        padding: EdgeInsets.all(20.0),
                        splashColor: Colors.purpleAccent,
                        child: Text("Firebase\n     DB"),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => firebase.MyApp()),
                          );
                          // Navigator.push(context, bottom_sheet.main());
                        },
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color:Colors.purpleAccent,
                          shape: BoxShape.circle),
                      child:FlatButton(
                        textColor: Colors.white,
                        padding: EdgeInsets.all(20.0),
                        splashColor: Colors.purpleAccent,
                        child: Text("Gradient\n  Color"),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => gradient.main()),
                          );
                          // Navigator.push(context, bottom_sheet.main());
                        },
                      ),
                    ),

                  ]
              ),
              SizedBox(height: 10,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color:Colors.purpleAccent,
                          shape: BoxShape.circle),
                      child: FlatButton(
                        textColor: Colors.white,
                        padding: EdgeInsets.all(15.0),
                        splashColor: Colors.purpleAccent,
                        child: Text(" HTTP Get"),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => http.MyGetHttpData()),
                          );
                          // Navigator.push(context, bottom_sheet.main());
                        },
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color:Colors.purpleAccent,
                          shape: BoxShape.circle),
                      child:  FlatButton(
                        textColor: Colors.white,
                        padding: EdgeInsets.all(20.0),
                        splashColor: Colors.purpleAccent,
                        child: Text(" Interact\n Viewer\n Testing"),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => viewer.MyApp()),
                          );
                          // Navigator.push(context, bottom_sheet.main());
                        },
                      ),
                    )

                  ]
              ),
              SizedBox(height: 10,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color:Colors.purpleAccent,
                          shape: BoxShape.circle),
                      child:FlatButton(
                        textColor: Colors.white,
                        padding: EdgeInsets.all(20.0),
                        splashColor: Colors.purpleAccent,
                        child: Text("List View"),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => list_view.main()),
                          );
                          // Navigator.push(context, bottom_sheet.main());
                        },
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color:Colors.purpleAccent,
                          shape: BoxShape.circle),
                      child: FlatButton(
                        textColor: Colors.white,
                        padding: EdgeInsets.all(15.0),
                        splashColor: Colors.purpleAccent,
                        child: Text("Snack Bar"),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => snackbar.ContactPage()),
                          );
                          // Navigator.push(context, bottom_sheet.main());
                        },
                      ),
                    ),

                  ]
              ),
              SizedBox(height: 10,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color:Colors.purpleAccent,
                            shape: BoxShape.circle),
                      child:FlatButton(
                        textColor: Colors.white,

                        splashColor: Colors.purpleAccent,
                        child: Text("Stepper"),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => stepper.MyHome()),
                          );
                          // Navigator.push(context, bottom_sheet.main());
                        },
                      )
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color:Colors.purpleAccent,
                          shape: BoxShape.circle),
                        child:FlatButton(
                          textColor: Colors.white,
                          padding: EdgeInsets.all(20.0),
                          splashColor: Colors.purpleAccent,
                          child: Text("Tabs"),
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => tabs.MyHome()),
                            );
                            // Navigator.push(context, bottom_sheet.main());
                          },
                        ),
                    )

                  ]
              ),
              SizedBox(height: 10,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(

                          color:Colors.purpleAccent,
                          shape: BoxShape.circle),
                      child: FlatButton(
                        textColor: Colors.white,
                        padding: EdgeInsets.all(20.0),
                        splashColor: Colors.purpleAccent,
                        child: Text("Theme"),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => theme.MyHome()),
                          );
                          // Navigator.push(context, bottom_sheet.main());
                        },
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color:Colors.purpleAccent,
                          shape: BoxShape.circle),
                      child: FlatButton(
                        textColor: Colors.white,
                        padding: EdgeInsets.all(20.0),
                        splashColor: Colors.purpleAccent,
                        child: Text("  PDF Viewer"),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => pdf.MyApp()),
                          );
                          // Navigator.push(context, bottom_sheet.main());
                        },
                      ),
                    ),

                  ]
              ),
            ],
          ),
          ),
          ),
          ],
          ),
    );
  }
}

