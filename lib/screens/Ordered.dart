import 'package:flutter/material.dart';
import 'main.dart';
class Ordered extends StatelessWidget {
  static const routeName = '/ordered';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.brown,title: Text("Your Order Is Placed") ,centerTitle: true),
      backgroundColor: Colors.brown[200],
      body: SingleChildScrollView(
              child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image:AssetImage("assets/972644beba828e5f811be496f68a0473.jpg"))
          ),
          child: Column(
            children: <Widget>[
             
              Container(
                height: MediaQuery.of(context).size.height/2 - 20,
                width: MediaQuery.of(context).size.width*0.7,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/panda-eating-rice-vector-923418.png')
                  )
                ),
              ),

              Center(child: Text("Your Order Has Been Placed Thank You!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black,backgroundColor: Colors.deepOrangeAccent[50]),)),
                 SizedBox(height: 1),
            InkWell(
              child:Text("Go Back To Home Screen",style: TextStyle(backgroundColor: Colors.brown,fontSize: 18,color: Colors.white),textAlign: TextAlign.center,),
              onTap: () {Navigator.of(context).pushReplacementNamed(MyHomePage.routeName);},
            ),
            ],
          ),
        ),
      ),
    );
  }
}