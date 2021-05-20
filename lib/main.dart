import 'package:flutter/material.dart';
import 'package:meta_trader/screen/home/main_home.dart';
import 'package:meta_trader/screen/more/more.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
      home: MainHome(),
        onGenerateRoute: (initial){
          switch(initial.name){
            // case '/login':
            //   return MaterialPageRoute(
            //       builder: (context){
            //         return LoginScreen();
            //       },
            //       settings: RouteSettings());
            case '/more':
              return MaterialPageRoute(
                  builder: (context){
                    Map<String, dynamic> arguments = null;
                    if (initial.arguments is Map<String, dynamic>) {
                      arguments = initial.arguments as Map<String, dynamic>;
                    }
                    return More();
                  },
                  settings: RouteSettings());
            default: return null;
          }
        }
    );
  }
}
