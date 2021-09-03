// @dart=2.9
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:room_automation_shot/actions/navigation.dart';
import 'package:room_automation_shot/utils/routing_constant.dart';
import 'package:room_automation_shot/widgets/scaffold/scaffold.widget.dart';
import 'package:room_automation_shot/widgets/screen/room.automation.widget.dart';
import 'package:room_automation_shot/widgets/screen/userdashboard.widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      initialRoute: homeRoute,
      onGenerateRoute: RouteGenerator.generateRoute,
      home: ScaffoldWidget(
        body: RoomAutomationWidget(),
      ),
    );
  }
}
