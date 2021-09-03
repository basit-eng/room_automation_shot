import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:room_automation_shot/utils/color.dart';
import 'package:room_automation_shot/widgets/screen/userdashboard.widget.dart';

class RoomAutomationWidget extends StatefulWidget {
  const RoomAutomationWidget({Key? key}) : super(key: key);

  @override
  _RoomAutomationWidgetState createState() => _RoomAutomationWidgetState();
}

class _RoomAutomationWidgetState extends State<RoomAutomationWidget> {
  bool isSwitched = false;
  @override
  void initState() {
    isSwitched = !isSwitched;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Material(
      child: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: kColor("#E8E8E8"),
          ),
          child: ListView(
            children: [
              HeaderScetion(
                leftIcon: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 24,
                  ),
                ),
                rightIcon: Icon(
                  Icons.menu,
                  size: 24,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                alignment: Alignment.bottomLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        style: GoogleFonts.lato(
                          fontSize: 24.0,
                          color: Colors.black,
                          height: 1.72,
                        ),
                        children: [
                          TextSpan(
                            text: "Bed",
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text: "Room",
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Total 4 active devices.',
                      style: GoogleFonts.lato(
                        fontSize: 14.0,
                        color: Colors.black.withOpacity(0.5),
                        height: 2.0,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        itemTempleteWidget(
                          active: true,
                          url: kIsWeb ? "icons/AC.png" : "assets/icons/AC.png",
                          itemName: "AC",
                        ),
                        itemTempleteWidget(
                          url: kIsWeb
                              ? "icons/music.png"
                              : "assets/icons/music.png",
                          active: false,
                          itemName: "Music",
                        ),
                        itemTempleteWidget(
                          active: false,
                          url: kIsWeb
                              ? "icons/light.png"
                              : "assets/icons/light.png",
                          itemName: "Light",
                        ),
                        itemTempleteWidget(
                          url: kIsWeb
                              ? "icons/security.png"
                              : "assets/icons/security.png",
                          active: false,
                          itemName: "Security",
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: 250,
                height: 250,
                padding: EdgeInsets.all(30),
                margin: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  // color: Colors.greenAccent,
                  image: DecorationImage(
                    image: AssetImage(
                      kIsWeb
                          ? "icons/bg-lines.png"
                          : "assets/icons/bg-lines.png",
                    ),
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.all(08),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: kColor("E8E8E8"),
                          spreadRadius: 16.0,
                          blurRadius: 04.0,
                          offset: Offset(06, 12))
                    ],
                    color: kColor("FFFFFF"),
                    shape: BoxShape.circle,
                    // border: Border.all(color: kColor("#339DFA"), width: 06),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        '20°C',
                        style: GoogleFonts.lato(
                          fontSize: 33.0,
                          color: const Color(0xFF060E23),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Celcious',
                        style: GoogleFonts.lato(
                          fontSize: 19.0,
                          color: const Color(0xFFAAA7A6),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      Text(
                        '23 Minutes Left',
                        style: GoogleFonts.lato(
                          fontSize: 17.0,
                          color: const Color(0xFF339DFA),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: size.width,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Samsung AC',
                            style: GoogleFonts.lato(
                              fontSize: 18.0,
                              color: const Color(0xFF21293A),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 08,
                          ),
                          Text(
                            'Connected',
                            style: GoogleFonts.lato(
                              fontSize: 14.0,
                              color: const Color(0xFF8E99AF),
                            ),
                          ),
                        ],
                      ),
                    ),
                    spacer(),
                    Container(
                      height: 50,
                      width: 80,
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            isSwitched ? 'ON' : "OFF",
                            style: GoogleFonts.lato(
                              fontSize: 12.0,
                              color: Colors.black,
                              letterSpacing: -0.272,
                              fontWeight: FontWeight.w600,
                              height: 0.53,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Switch(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(
                                () {
                                  isSwitched = value;
                                  print(isSwitched);
                                },
                              );
                            },
                            activeColor: kColor("15B4D1"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              spacer(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 08),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: kColor("#03C3CC"),
                    onPrimary: kColor("FFFFFF"),
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 18),
                    elevation: 12.0,
                    side: BorderSide(
                        color: Colors.grey.withOpacity(0.2), width: 0.0),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'SET TEMPERATURE',
                    style: GoogleFonts.lato(
                      fontSize: 16.0,
                      color: Colors.white,
                      letterSpacing: 2.714286087036133,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox spacer() {
    return SizedBox(
      height: 20,
    );
  }

  Container itemTempleteWidget({String? url, bool? active, String? itemName}) {
    return Container(
      width: 65,
      height: 65,
      decoration: BoxDecoration(
        color: active! ? kColor("03C3CC") : kColor("FFFFFF"),
        borderRadius: BorderRadius.circular(14),
      ),
      margin: EdgeInsets.symmetric(vertical: 24),
      padding: EdgeInsets.symmetric(vertical: 06),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 26,
            height: 26,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(url!),
              ),
            ),
          ),
          Text(
            itemName!,
            style: GoogleFonts.lato(
              fontSize: 12.0,
              color: active ? kColor("FFFFFF") : kColor("707070"),
              letterSpacing: -0.224,
              fontWeight: FontWeight.w500,
              height: 0.57,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
