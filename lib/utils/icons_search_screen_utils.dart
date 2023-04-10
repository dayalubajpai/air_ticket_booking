import 'package:air_ticket/utils/app_style.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IconsSearchUtils extends StatelessWidget {
  final icon, icon_title;
  const IconsSearchUtils({Key? key, required this.icon, required this.icon_title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 30,
      padding: EdgeInsets.only(left: 12,right: 12,top: 12,bottom: 12),
      // padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.black45,),
          SizedBox(
            width: 10,
          ),
          Text(icon_title, style: TextStyle(fontFamily: GoogleFonts.lato().fontFamily, fontSize: 16, color: Colors.black87, fontWeight: FontWeight.w500))
        ],
      ),
    );
  }
}
