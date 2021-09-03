import 'package:flutter/material.dart';

class SettingWidget extends StatelessWidget {
  const SettingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Material(
      child: Container(
        width: size.width,
        height: size.height,
        child: Center(
          child: Text("Setting Section Not Yet Prepare"),
        ),
      ),
    );
  }
}
