import 'package:flutter/material.dart';
import 'package:blog_app_new/views/home.dart';

class BottomNavBar extends StatefulWidget {
  int currentindex = 0;

  BottomNavBar(this.currentindex);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final List<Widget> _children = [
    Home(),
    SafeArea(
      child: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 10, bottom: 4, left: 25, right: 20),
                  child: Text(
                    "Categories",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 23.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 4, bottom: 4, left: 20, right: 20),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.cyan.shade700,
                    child: Text(
                      'ALL',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 4, bottom: 4, left: 20, right: 20),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.cyan.shade700,
                    child: Text(
                      'TRENDING',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 4, bottom: 4, left: 20, right: 20),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.cyan.shade700,
                    child: Text(
                      'TECHNOLOGY',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 4, bottom: 4, left: 20, right: 20),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.cyan.shade700,
                    child: Text(
                      'HEALTH',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 4, bottom: 4, left: 20, right: 20),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.cyan.shade700,
                    child: Text(
                      'POLITICAL',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 4, bottom: 4, left: 20, right: 20),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.cyan.shade700,
                    child: Text(
                      'EDUCATIONAL',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 4, bottom: 4, left: 20, right: 20),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.cyan.shade700,
                    child: Text(
                      'SPORTS',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 4, bottom: 4, left: 20, right: 20),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.cyan.shade700,
                    child: Text(
                      'AUTOMOBILE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 4, bottom: 4, left: 20, right: 20),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.cyan.shade700,
                    child: Text(
                      'LITERATURE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 4, bottom: 4, left: 20, right: 20),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.cyan.shade700,
                    child: Text(
                      'ENTERTAINMENT',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 4, bottom: 4, left: 20, right: 20),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.cyan.shade700,
                    child: Text(
                      'TRAVEL',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 4, bottom: 4, left: 20, right: 20),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.cyan.shade700,
                    child: Text(
                      'OTHERS',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('images/profilepic1.jpg'),
          ),
          Text(
            'Nishant Sharma',
            style: TextStyle(
              fontSize: 38.0,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 1.5,
            ),
          ),
          Text(
            'FLUTTER DEVELOPER',
            style: TextStyle(
              fontSize: 14.0,
              fontFamily: 'Poppins',
              color: Colors.white,
              letterSpacing: 1.5,
            ),
          ),
          SizedBox(
            height: 20,
            width: 180,
            child: Divider(
              color: Colors.white,
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(30, 30, 30, 20),
            color: Colors.cyan.shade900,
            child: ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: Text(
                'nishantsh2312@gmail.com',
                style: TextStyle(
                  fontSize: 17.0,
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  letterSpacing: 1.5,
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(30, 20, 30, 20),
            color: Colors.cyan.shade900,
            child: ListTile(
              leading: Icon(
                Icons.power_settings_new,
                color: Colors.white,
              ),
              title: Text(
                'Logout',
                style: TextStyle(
                  fontSize: 17.0,
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  letterSpacing: 1.5,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  ];

  void onTabTapped(int index) {
    setState(() {
      widget.currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[widget.currentindex],
      bottomNavigationBar: Container(
        height: 56.0,
        margin: EdgeInsets.only(
          top: 7.0,
          left: 24.0,
          right: 24.0,
          bottom: 15.0,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: Colors.grey.shade700,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey.shade900,
            onTap: onTabTapped,
            currentIndex: widget.currentindex,
            items: [
              buildBottomNavigationBarItem(0, "images/home.png", "Home"),
              buildBottomNavigationBarItem(
                  1, "images/category.png", "Categories"),
              buildBottomNavigationBarItem(2, "images/account.png", "Profile"),
            ],
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(
      int index, String icon, String Title) {
    return BottomNavigationBarItem(
      icon: ImageIcon(
        AssetImage(icon),
      ),
      title: Text('Profile'),
    );
  }
}
