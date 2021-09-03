import 'package:flutter/material.dart';

class AccountWidget extends StatelessWidget {
  const AccountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      child: Container(
        width: size.width,
        height: size.height,
        child: Center(
          child: Text("Account Section Not Yet Prepare"),
        ),
      ),
    );
  }
}
