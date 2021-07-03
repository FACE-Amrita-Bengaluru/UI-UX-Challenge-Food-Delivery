import 'package:flutter/material.dart';
import 'main.dart';
class Login extends StatefulWidget {
  
@override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {




  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: Colors.brown[200],
      body:SingleChildScrollView(
              child: Column(
          children: <Widget>[
            SizedBox(height:5),
              Container(
                height: MediaQuery.of(context).size.height/2 -70,
                
                decoration: BoxDecoration(
                  color: Colors.pink[200],
                  image: DecorationImage(
                      fit: BoxFit.cover,
                    image: AssetImage("assets/young-boy-riding-orange-delivery-scooter_7496-267-removebg-preview.png")
                  )
                ),
              ),
              SizedBox(
                height: 10,
              ),
             
                  SingleChildScrollView(
                                    child: Card(
                      color: Colors.pink[100],
                      elevation: 0.5,
                      child: Column(
                        children: <Widget>[
                          TextField(
                            decoration:InputDecoration(labelText: 'Username'),
                            keyboardType: TextInputType.text,
                            
                          ),
                             TextField(decoration:InputDecoration(labelText: 'Password'),
                              keyboardType: TextInputType.visiblePassword,
               ),
               RaisedButton(
                 child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                 color: Colors.brown,
                 onPressed: () { 
                     Navigator.of(context).pushReplacementNamed(MyHomePage.routeName); },
               ),
               Container(
                 height: MediaQuery.of(context).size.height*0.4,
                            decoration: BoxDecoration(
                  
                  image: DecorationImage(
                      fit: BoxFit.cover,
                    image: AssetImage("assets/65d8275a75ced40dfcc4afb68aa73d9c.jpg")
                  )
                ),
               )

                        ],
                      ),
                    ),
                  ),
                
              
          ],
        ),
      ),
      
    );
  }
}