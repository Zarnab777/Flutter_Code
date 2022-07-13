import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://cdn.3dnames.co/previews/ps28/250x250/z/ps28zarnab3dxx.jpg";
    return Drawer(
      child: Container(
        color: Colors.lightBlue,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  accountName: Text("Zarnab Bushra"),
                  accountEmail: Text("zarnab.bushra@gmail.com"),
                  currentAccountPicture:
                      CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
                )),
            ListTile(
              leading: Icon(
                IconData(0xe040, fontFamily: 'MaterialIcons'),
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                IconData(0xe042, fontFamily: 'MaterialIcons'),
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                IconData(0xe22a, fontFamily: 'MaterialIcons'),
                color: Colors.white,
              ),
              title: Text(
                "Email",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
