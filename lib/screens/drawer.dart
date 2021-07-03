import 'package:app/profile_page.dart';
import 'package:flutter/material.dart';

import './details_page.dart';
import 'main.dart';
class MainDrawer extends StatelessWidget {
    Widget buildListTile(String title,IconData icon,Function tapHandler){
    return  ListTile(
          leading: Icon(icon,
          size:26),
          title: Text(title,style: TextStyle(fontSize:24,fontWeight:FontWeight.bold),),
          onTap:  tapHandler
        );
  }
  @override
  
  Widget build(BuildContext context) {
    
    return Drawer(
      child: Column(children: <Widget>[
  
        SizedBox(height: 10,),
        Container(
          height: 120,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          alignment: Alignment.centerLeft,
          
           child: Text("New Food For You",style: TextStyle(fontSize:30,fontWeight: FontWeight.bold,color: Colors.deepPurpleAccent),),
          decoration: BoxDecoration(
            color: Colors.brown[200],
                        image: DecorationImage(
                          image: AssetImage('assets/chef-boy-cooking-food-cartoon-vector-21107876.jpg'),
                          fit: BoxFit.cover
                        ),
        )),
        SizedBox(height: 20,),
        buildListTile("Order More Food", Icons.food_bank,(){
          Navigator.of(context).pushReplacementNamed(MyHomePage.routeName);
        }),
        buildListTile("Your Info", Icons.settings,(){
        Navigator.of(context).pushReplacementNamed(ProfilePage.routeName);},)
        
      ],),
      
    );
  }
}