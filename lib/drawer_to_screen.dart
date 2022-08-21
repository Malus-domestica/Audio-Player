import 'package:flutter/material.dart';

class SreenDrawer extends StatefulWidget {
  const SreenDrawer({Key? key}) : super(key: key);

  @override
  State<SreenDrawer> createState() => _SreenDrawerState();
}

class _SreenDrawerState extends State<SreenDrawer> {
  Color activeColor = Color(0xFFf6d6d7);
  Color inactiveColor = Color(0xFFfafafa);
  Color textColor = Color(0xFF000000);

  List<bool> selected_opt = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  set_opt(int i) {
    for (int k = 0; k < selected_opt.length; k++) {
      if (k == i)
        selected_opt[k] = true;
      else
        selected_opt[k] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xFFfafafa),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            margin: EdgeInsets.only(bottom: 40),
            decoration: BoxDecoration(
              color: Color(0xFFe0f4f0),
              image: DecorationImage(
                image: AssetImage('assets/images/navbarimg.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            curve: Curves.bounceIn,
            child: Container(
              child: Column(
                children: [
                  Container(
                    child: const Icon(
                      Icons.person,
                      size: 60,
                      color: Color(0xFF293241),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Hello,  User',
                    style: TextStyle(fontSize: 25, color: Color(0xFFe0f4f0)),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            tileColor: inactiveColor,
            selected: selected_opt[0],
            selectedTileColor: activeColor,
            title: Container(
              child: Row(
                children: [
                  Icon(
                    Icons.home,
                    color: Color(0xFFFF5252),
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 17,
                      color: textColor,
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              if (!selected_opt[0]) {
                setState(() {
                  textColor = Color(0xFF000000);
                  set_opt(0);
                });
                Navigator.pushNamed(context, '/');
              }
            },
          ),
          ListTile(
            tileColor: inactiveColor,
            selected: selected_opt[1],
            selectedTileColor: activeColor,
            title: Container(
              child: Row(
                children: [
                  // Icon(
                  //   Icons.he,
                  //   color: Color(0xFFFF5252),
                  //   size: 30,
                  // ),
                  Container(
                    child: Image.asset(
                      'assets/images/phy_health.png',
                      height: 30,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Mental Health',
                    style: TextStyle(
                      fontSize: 17,
                      color: textColor,
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              if (!selected_opt[1]) {
                setState(() {
                  textColor = Color(0xFF000000);
                  set_opt(1);
                });
                Navigator.pushNamed(context, '/');
              }
            },
          ),
          ListTile(
            tileColor: inactiveColor,
            selected: selected_opt[2],
            selectedTileColor: activeColor,
            title: Container(
              child: Row(
                children: [
                  Icon(
                    Icons.notifications,
                    color: Color(0xFFFF5252),
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Physical Health',
                    style: TextStyle(
                      fontSize: 17,
                      color: textColor,
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              if (!selected_opt[2]) {
                setState(() {
                  textColor = Color(0xFF000000);
                  set_opt(2);
                });
                Navigator.pushNamed(context, '/');
              }
            },
          ),
          ListTile(
            tileColor: inactiveColor,
            selected: selected_opt[3],
            selectedTileColor: activeColor,
            title: Container(
              child: Row(
                children: [
                  Icon(
                    Icons.settings,
                    color: Color(0xFFFF5252),
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Social Health',
                    style: TextStyle(
                      fontSize: 17,
                      color: textColor,
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              if (!selected_opt[3]) {
                setState(() {
                  textColor = Color(0xFF000000);
                  set_opt(3);
                });
                Navigator.pushNamed(context, '/');
              }
            },
          ),
          ListTile(
            tileColor: inactiveColor,
            selected: selected_opt[4],
            selectedTileColor: activeColor,
            title: Container(
              child: Row(
                children: [
                  Icon(
                    Icons.settings,
                    color: Color(0xFFFF5252),
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Work Health',
                    style: TextStyle(
                      fontSize: 17,
                      color: textColor,
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              if (!selected_opt[4]) {
                setState(() {
                  textColor = Color(0xFF000000);
                  set_opt(4);
                });
                Navigator.pushNamed(context, '/');
              }
            },
          ),
          ListTile(
            tileColor: inactiveColor,
            selected: selected_opt[5],
            selectedTileColor: activeColor,
            title: Container(
              child: Row(
                children: [
                  Icon(
                    Icons.settings,
                    color: Color(0xFFFF5252),
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'About Us',
                    style: TextStyle(
                      fontSize: 17,
                      color: textColor,
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              if (!selected_opt[5]) {
                setState(() {
                  textColor = Color(0xFF000000);
                  set_opt(5);
                });
                Navigator.pushNamed(context, '/');
              }
            },
          ),
          ListTile(
            tileColor: inactiveColor,
            selected: selected_opt[6],
            selectedTileColor: activeColor,
            title: Container(
              child: Row(
                children: [
                  Icon(
                    Icons.settings,
                    color: Color(0xFFFF5252),
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Contact Us',
                    style: TextStyle(
                      fontSize: 17,
                      color: textColor,
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              if (!selected_opt[6]) {
                setState(() {
                  textColor = Color(0xFF000000);
                  set_opt(6);
                });
                Navigator.pushNamed(context, '/');
              }
            },
          ),
          ListTile(
            tileColor: inactiveColor,
            selected: selected_opt[7],
            selectedTileColor: activeColor,
            title: Container(
              child: Row(
                children: [
                  Icon(
                    Icons.settings,
                    color: Color(0xFFFF5252),
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Learn more',
                    style: TextStyle(
                      fontSize: 17,
                      color: textColor,
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              if (!selected_opt[7]) {
                setState(() {
                  textColor = Color(0xFF000000);
                  set_opt(7);
                });
                Navigator.pushNamed(context, '/');
              }
            },
          ),
          ListTile(
            tileColor: inactiveColor,
            selected: selected_opt[8],
            selectedTileColor: activeColor,
            title: Container(
              child: Row(
                children: [
                  Icon(
                    Icons.settings,
                    color: Color(0xFFFF5252),
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Consult Doctor',
                    style: TextStyle(
                      fontSize: 17,
                      color: textColor,
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              if (!selected_opt[8]) {
                setState(() {
                  textColor = Color(0xFF000000);
                  set_opt(8);
                });
                Navigator.pushNamed(context, '/');
              }
            },
          ),
          ListTile(
            tileColor: inactiveColor,
            selected: selected_opt[9],
            selectedTileColor: activeColor,
            title: Container(
              child: Row(
                children: [
                  Icon(
                    Icons.logout_rounded,
                    color: Color(0xFFFF5252),
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Logout',
                    style: TextStyle(
                      fontSize: 17,
                      color: textColor,
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              if (!selected_opt[9]) {
                setState(() {
                  textColor = Color(0xFF000000);
                  set_opt(9);
                });
                Navigator.pushNamed(context, '/');
              }
            },
          ),
        ],
      ),
    );
  }
}
