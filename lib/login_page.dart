//===========================================================
// IMPORT
//===========================================================
import 'package:flutter/material.dart';
import 'CustomIcons.dart';
import 'Widgets/SocialIcon.dart';

//===========================================================
// CLASS: MAIN: LOGIN APP
//===========================================================
class LoginPage extends StatefulWidget {
  @override
  
  _LoginPageState createState() => _LoginPageState();
    }

  //======================================================================================================================
  // CLASS#1: _LOGIN APP STATE
  //======================================================================================================================   
  class _LoginPageState extends State<LoginPage>{
      @override
      Widget build(BuildContext context){
        //=====================================================
        // RETURN MATERIAL APP
        //=====================================================        
        return Scaffold(
          body: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              //==============================================
              // CONTAINER
              //==============================================            
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/bg01.jpg')
                    )
               ),
              ),
              //==============================================
              // PADDING ALL
              //============================================== 
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                 //=====================================================
                // WELCOME TO E-TASKS
                //=====================================================                    
                  Text(
                    'Welcome to e-Task 2021',
                    style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)
                  ), 
                //=====================================================
                // SPACE
                //===================================================== 
                  SizedBox(height: 10.0,),
                //=====================================================
                // USER NAME
                //=====================================================                 
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: 'Username',
                      hintText: 'Enter User Name',
                      labelStyle: TextStyle(fontSize: 20.0),
                      filled: true,
                      fillColor: Colors.white70,
                      border: InputBorder.none                 
                    ),
                  ),
                //=====================================================
                // SPACE
                //===================================================== 
                  SizedBox(height: 10.0,),
                //=====================================================
                // TEXTBOX: PASSWORD
                //=====================================================                 
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.vpn_key),                    
                      labelText: 'Password',
                      hintText: 'Enter Password',                      
                      labelStyle: TextStyle(
                          fontSize: 20.0
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: InputBorder.none                               
                    ),
                  ),
                //=====================================================
                // SPACE
                //===================================================== 
                  SizedBox(height: 10.0,),
                //=====================================================
                // BUTTON (1) LOGIN (2) SIGN-UP
                //=====================================================   
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    //=====================================================
                    // BUTTON LOGIN
                    //===================================================== 
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondRoute()),
                        ); //push
                      }, //onPress
                      color: Colors.blue,
                      child: Text('      Login    ', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
                      ),
                    //=====================================================
                    // BUTTON SIGN-UP
                    //=====================================================                      
                    RaisedButton(
                      onPressed: () {},
                      color: Colors.blue,
                      child: Text('  Sign-up  ', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
                    ),                  
                    ],
                  ),
                        
                                        //=====================================================
                                        // SPACE
                                        //===================================================== 
                                        SizedBox(height: 10,),
                                        //=====================================================
                                        // SOCIAL LOGIN 2020 (LABEL)
                                        //=====================================================            
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                             // horizontalLine(),
                                              Text(
                                                'Social Login 2020',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20.0,
                                                  fontFamily: 'Poppins-Medium',
                                                )
                                              ),
                                             // horizontalLine(),
                                            ],
                                          ),
                                        //=====================================================
                                        // SPACE
                                        //===================================================== 
                                        SizedBox(height: 10,),
                                        //=====================================================
                                        // SOCIAL ICON
                                        //=====================================================                                         
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              SocialIcon(
                                                colors: [
                                                  Color(0xFF102397),
                                                  Color(0xFF187adf),
                                                  Color(0xFF00eaf8),
                                                ],
                                                icondata: IconData(0xe901, fontFamily: 'CustomIcons'),
                                                onPressed: () {},
                                              ),
                                              SocialIcon(
                                                colors: [
                                                  Color(0xFFff4f38),
                                                  Color(0xFFff355d),
                                                ],
                                                icondata: CustomIcons.googlePlus,
                                                onPressed: () {},
                                              ),
                                              SocialIcon(
                                                colors: [
                                                  Color(0xFF17ead9),
                                                  Color(0xFF6078ea),
                                                ],
                                                icondata: CustomIcons.twitter,
                                                onPressed: () {},
                                              ),
                                              SocialIcon(
                                                colors: [
                                                  Color(0xFF00c6fb),
                                                  Color(0xFF005bea),
                                                ],
                                                icondata: CustomIcons.linkedin,
                                                onPressed: () {},
                                              ),
                                            ],
                                          ),
                                        //=====================================================
                                        // SPACE
                                        //===================================================== 
                                        SizedBox(height: 10,),
                                        //=====================================================
                                        // ROW: NEW USER, SIGNUP
                                        //=====================================================   
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Text(
                                                'New User? ',
                                                style: TextStyle(
                                               fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'Poppins-Bold',
                                                    color: Colors.black,
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {},
                                                child: Text(
                                                  'SignUp',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'Poppins-Bold',
                                                    color: Colors.black,
                                                  )
                                                ),
                                              )
                                            ],
                                          )

                                        ],),
    )
            ] //child <Widget>[]
        ), //body Stack
        );
      } //Widget       
    } // class


  //===================================================================================================================
  // SECOND ROUTE
  //===================================================================================================================
  class SecondRoute extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Second Route"),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Go back!'),
          ),
        ),
      );
    }
  }


