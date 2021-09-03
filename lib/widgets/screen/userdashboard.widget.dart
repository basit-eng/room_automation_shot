import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:room_automation_shot/utils/color.dart';

class UserDashboardWidget extends StatelessWidget {
  const UserDashboardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 456,
        decoration: BoxDecoration(
          color: kColor("#E8E8E8"),
        ),
        child: ListView(
          children: [
            HeaderScetion(
              leftIcon: Image.asset(
                kIsWeb ? "images/Avatar.png" : "assets/images/Avatar.png",
              ),
              activeColor: Color(0xFF33558B),
              rightIcon: Image.asset(
                kIsWeb ? "icons/add.png" : "assets/icons/add.png",
              ),
            ),
            ListTIleWidget(
              plainText: "Hello ",
              boldText: "Kiara !",
              subtitle: "Good morning, welcome back.",
            ),
            RoomCardTemplete(
              title: "Living Room",
              devices: "4 Devices",
              imgUrl: kIsWeb
                  ? "images/bedroom-1.png"
                  : "assets/images/bedroom-1.png",
            ),
            RoomCardTemplete(
              title: "Bed Room",
              devices: "4 Devices",
              imgUrl: kIsWeb
                  ? "images/bedroom-2.png"
                  : "assets/images/bedroom-2.png",
            ),
            RoomCardTemplete(
              title: "Lose Yourself",
              devices: "Eminem",
              imgUrl: kIsWeb ? "images/room-3.png" : "assets/images/room-3.png",
            ),
          ],
        ),
      ),
    );
  }

}

class ListTIleWidget extends StatelessWidget {
  const ListTIleWidget({
    Key? key,
    required this.plainText,
    required this.boldText,
    required this.subtitle,
  }) : super(key: key);

  final String plainText;
  final String boldText;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ListTile(
            contentPadding: EdgeInsets.all(0),
            title: Text.rich(
              TextSpan(
                style: GoogleFonts.lato(
                  fontSize: 24.0,
                  color: Colors.black,
                  height: 1.72,
                ),
                children: [
                  TextSpan(
                    text: plainText,
                  ),
                  TextSpan(
                    text: boldText,
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            subtitle: Text(
              subtitle,
              style: GoogleFonts.lato(
                fontSize: 14.0,
                color: Colors.black.withOpacity(0.5),
                height: 2.94,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderScetion extends StatelessWidget {
  const HeaderScetion({
    Key? key,
    required this.leftIcon,
    required this.rightIcon,
    this.activeColor,
  }) : super(key: key);
  final Widget leftIcon;
  final Color? activeColor;
  final Widget rightIcon;
  final bool dashboard = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 60,
              height: 60,
              margin: EdgeInsets.only(left: 16),
              alignment: Alignment.centerLeft,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    child: Container(
                      width: dashboard ? 60 : 20,
                      height: dashboard ? 60 : 20,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: leftIcon,
                    ),
                  ),
                  Positioned(
                    right: 01,
                    bottom: 36,
                    child: Container(
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                          color: activeColor != null
                              ? kColor("339DFA")
                              : Colors.transparent,
                          shape: BoxShape.circle),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 60.0,
              height: 70.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(30.0),
                ),
                color: Colors.white,
              ),
              child: Container(
                width: dashboard ? 16 : 18,
                height: dashboard ? 16 : 18,
                child: rightIcon,
              ),
            )
          ],
        ),
      ],
    );
  }
}

class RoomCardTemplete extends StatelessWidget {
  const RoomCardTemplete({
    Key? key,
    required this.title,
    required this.devices,
    required this.imgUrl,
  }) : super(key: key);

  final String title;
  final String devices;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 408.0,
      height: 186.0,
      padding: EdgeInsets.all(32),
      margin: EdgeInsets.all(08),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
          image: AssetImage(imgUrl),
          // fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.lato(
              fontSize: 20.0,
              color: Colors.white,
              letterSpacing: -0.41600000000000004,
              height: 0.73,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            devices,
            style: GoogleFonts.lato(
              fontSize: 16.0,
              color: Colors.white,
              letterSpacing: -0.304,
              fontWeight: FontWeight.w700,
              height: 1.0,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
