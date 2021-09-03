import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:room_automation_shot/utils/routing_constant.dart';
import 'package:room_automation_shot/widgets/screen/account.widget.dart';
import 'package:room_automation_shot/widgets/screen/room.automation.widget.dart';
import 'package:room_automation_shot/widgets/screen/setting.widget.dart';
import 'package:room_automation_shot/widgets/screen/userdashboard.widget.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (context) => UserDashboardWidget());
      case automation:
        return MaterialPageRoute(builder: (context) => RoomAutomationWidget());
        case account:
        return MaterialPageRoute(builder: (context) => AccountWidget());
      case setting:
        return MaterialPageRoute(builder: (context) => SettingWidget());
      default:
        return _erroRoute("$settings.name");
    }
  }

  static Route<dynamic> _erroRoute(String error) {
    return MaterialPageRoute(
      builder: (context) {
        return Scaffold(
          body: Center(
            child: Text(
              "$error not found! ",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.red,
              ),
            ),
          ),
        );
      },
    );
  }
}
