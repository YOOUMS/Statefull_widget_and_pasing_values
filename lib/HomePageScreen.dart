import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:statefull_widget_project/HomePageState.dart';

class HomePageScreen extends State<HomePageState> {
  String content = "home";
  int index = 0;
  bool switchState = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: switchState ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            onTap: (i) {
              if (i == 0) {
                content = "Home";
                index = i;
              } else if (i == 1) {
                content = "Favorite";
                index = i;
              } else {
                content = "Profile";
                index = i;
              }
              setState(() {});
            },
            currentIndex: index,
            items: const [
              BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
              BottomNavigationBarItem(
                label: "Favorite",
                icon: Icon(Icons.favorite),
              ),
              BottomNavigationBarItem(
                  label: "Profile", icon: Icon(Icons.perm_identity)),
            ]),
        appBar: AppBar(title: Text(content)),
        drawer: Drawer(
          child: Container(
            margin: EdgeInsets.only(top: 100),
            child: Column(children: [
              ListTile(
                leading: Icon(Icons.home),
                title: ElevatedButton(
                  child: Text("Home"),
                  onPressed: () {
                    Navigator.pop(context);
                    content = "Home";
                    setState(() {});
                  },
                ),
                trailing: Icon(Icons.arrow_forward_ios),
                subtitle: Text("go Home"),
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: ElevatedButton(
                  child: Text("Favorite"),
                  onPressed: () {
                    Navigator.pop(context);
                    content = "Favorite";
                    setState(() {});
                  },
                ),
                trailing: Icon(Icons.arrow_forward_ios),
                subtitle: Text("Your favorite products"),
              ),
              ListTile(
                leading: Icon(Icons.perm_identity),
                title: ElevatedButton(
                  child: Text("Profile"),
                  onPressed: () {
                    Navigator.pop(context);
                    content = "Profile";
                    setState(() {});
                  },
                ),
                trailing: Icon(Icons.arrow_forward_ios),
                subtitle: Text("Information"),
              ),
            ]),
          ),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Text("Dart Theme"),
                ),
                Switch(value: switchState, onChanged: toggleSwitch),
              ],
            ),
            Text(content),
          ]),
        ),
      ),
    );
  }

  void toggleSwitch(bool value) {
    switchState = value;
    setState(() {});
  }
}
