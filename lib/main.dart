//===========================================================
// IMPORT
//===========================================================
import 'package:flutter/material.dart';
import 'package:logintest02/login_page.dart';

//===========================================================
// START PROGRAM
//===========================================================
void main() => runApp(MyApp());

//===========================================================
// CLASS LOGIN APP
//===========================================================
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    //=======================================================
    // RETURN
    //=======================================================    
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.pink),
      title: 'Login app',
      home: LoginPage()     // LINK TO LOGIN PAGE (CLASS NAME IN login_page.dart)
    );
    
  }
}


    

