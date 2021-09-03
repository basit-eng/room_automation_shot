import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:room_automation_shot/utils/color.dart';

class ScaffoldWidget extends StatefulWidget {
  const ScaffoldWidget({Key? key, required this.body}) : super(key: key);
  final Widget body;

  @override
  _ScaffoldWidgetState createState() => _ScaffoldWidgetState();
}

class _ScaffoldWidgetState extends State<ScaffoldWidget> {
  int currentindex = 0;
  bool label = false;

  @override
  @override
  Widget build(BuildContext context) {
    // print("Current Index : " + "$currentindex");
    // print("Boolean Value : " + "$label");

    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            bottomsheet(context);
          },
          child: Icon(
            Icons.add,
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.8),
                spreadRadius: 5,
                blurRadius: 08,
                offset: Offset(3.5, 4), // changes position of shadow
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
            child: Stack(
              children: [
                Positioned(
                  child: BottomNavigationBar(
                    type: BottomNavigationBarType.fixed,
                    currentIndex: currentindex,
                    showUnselectedLabels: false,
                    showSelectedLabels: false,
                    onTap: (index) {
                      setState(
                        () {
                          currentindex = index;
                        },
                      );
                    },
                    items: [
                      BottomNavigationBarItem(
                        icon: IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/');
                          },
                          icon: Icon(Icons.light),
                          iconSize: 22,
                          color: kColor("#707070"),
                        ),
                        label: '',
                        activeIcon: menuItem(Icons.home, "Home"),
                      ),
                      BottomNavigationBarItem(
                        icon: IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/automation');
                          },
                          icon: Icon(Icons.charging_station_outlined),
                          iconSize: 22,
                          color: kColor("#707070"),
                        ),
                        label: "",
                        activeIcon:
                            menuItem(Icons.charging_station_outlined, "Light"),
                      ),
                      BottomNavigationBarItem(
                        icon: IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/account');
                          },
                          icon: Icon(Icons.person),
                          iconSize: 22,
                          color: kColor("#707070"),
                        ),
                        label: '',
                        activeIcon: menuItem(Icons.person, "Account"),
                      ),
                      BottomNavigationBarItem(
                        icon: IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/setting');
                          },
                          icon: Icon(Icons.settings),
                          iconSize: 22,
                          color: kColor("#707070"),
                        ),
                        label: '',
                        activeIcon: menuItem(Icons.settings, "Settings"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: widget.body,
      ),
    );
  }

  void bottomsheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (builder) {
        return Container(
          height: 200,
          padding: EdgeInsets.only(top: 14),
          decoration: BoxDecoration(
            color: kColor("339DFA"),
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(30),
            ),
          ),
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                kIsWeb ? "images/Avatar.png" : "assets/images/Avatar.png",
              ),
              radius: 30,
            ),
            title: Text(
              'Lose Yourself',
              style: GoogleFonts.lato(
                fontSize: 21.0,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: Text(
              'Eminem',
              style: GoogleFonts.lato(
                fontSize: 17.0,
                color: Colors.white.withOpacity(0.8),
              ),
            ),
            trailing: Container(
              width: 100,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_left,
                        size: 36,
                        color: kColor("FFFFFF"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.pause,
                        size: 30,
                        color: kColor("FFFFFF"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_right,
                        size: 36,
                        color: kColor("FFFFFF"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget menuItem(IconData icon, String label) {
    return Container(
      width: 100,
      // padding: EdgeInsets.symmetric(horizontal: 08),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 28,
            color: kColor("#339DFA"),
          ),
          SizedBox(width: 03),
          Text(
            label,
            style: GoogleFonts.lato(
              fontSize: 12.0,
              color: const Color(0xFF339DFA),
              letterSpacing: -0.256,
              fontWeight: FontWeight.w500,
              height: 0.56,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
