import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:party/constants.dart';
import 'package:party/homepage.dart';
import 'package:party/register.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogInScreen(),
    );
  }
}
class LogInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kPrimaryColor,
      body: Stack(
        children: <Widget>[
          Container(
            height: 350,
            decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(400),
              )
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.transparent.withOpacity(0.2),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 16),
                        child: Icon(
                          Icons.account_circle,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Email Address",
                            hintStyle: TextStyle(
                              color: Colors.amber,
                              fontStyle: FontStyle.italic,
                            )
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 16),
                        child: Icon(
                          Icons.lock,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(
                              color: Colors.amber,
                              fontStyle: FontStyle.italic
                            )
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                    textColor: Colors.black,
                    color: Colors.amberAccent,
                    child: Text("LOGIN"),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return HomePage();
                        }
                      ));
                    },
                    shape: new RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: RaisedButton(
                textColor: Colors.black,
                color: Colors.amberAccent,
                child: Text("Register"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return RegistrationScreen();
                    }
                  ));
                },
                shape: new RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


