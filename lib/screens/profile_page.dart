import 'package:app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './user.dart';
import 'user_preferences.dart';
import './button_widget.dart';
import './numbers_widget.dart';
import './profile_widget.dart';

class ProfilePage extends StatefulWidget {
    static const routeName = "./user";
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar( leading: BackButton(
        onPressed: () {
          Navigator.of(context).pushReplacementNamed(MyHomePage.routeName);
        },
      ),
    backgroundColor: Colors.brown[100],
    elevation: 0,
    actions: [
      IconButton(
        icon: Icon(CupertinoIcons.moon_stars),
        onPressed: () {},
      ),
    ],),
      
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: user.imagepath,
            onClicked: () async {},
          ),
          const SizedBox(height: 24),
          buildName(user),
          const SizedBox(height: 24),
          Center(child: buildUpgradeButton()),
          const SizedBox(height: 24),
          NumbersWidget(),
          const SizedBox(height: 48),
          buildAbout(user),
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: TextStyle(color: Colors.grey),
          )
        ],
      );

  Widget buildUpgradeButton() => ButtonWidget(
        text: 'Become Elite Customer',
        onClicked: () {},
      );

  Widget buildAbout(User user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              user.favs,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );
}