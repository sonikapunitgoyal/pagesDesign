import 'package:flutter/material.dart';
import 'package:pagesdesign/signup.dart';
import 'package:splashscreen/splashscreen.dart';
import './login.dart';
import 'package:map_view/map_view.dart';

void main() {
  MapView.setApiKey('AIzaSyBw0ETREFE5pzzwJLGBhKBam2HxSrPYVtM');
  runApp(new MaterialApp(
    home: new MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new AfterSplash(),
      title: new Text(
        'H U N G R Y  I N',
        style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 27.0,
            color: Color(0xffe6c07b)),
      ),
      backgroundColor: Colors.black,
    );
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            leading:IconButton(icon:  Icon(
              Icons.close,
              color: Colors.black,
            ),onPressed: (){Navigator.pop(context);},),
            backgroundColor: Colors.white,
            bottom: TabBar(indicatorColor:Color(0xffe6c07b),
              tabs: [
                Tab(
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  
                  ),
                  
                ),
                Tab(
                  child: Text('Signup',
                      style: TextStyle(color: Colors.black, fontSize: 18.0)),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Login(),
              SignUp('hello'),
            ],
          ),
        ),
      ),
    );
  }
}
