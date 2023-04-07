import 'package:air_ticket/utils/app_style.dart';
import 'package:flutter/material.dart';

class HotelCartScreen extends StatelessWidget {
  const HotelCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: const EdgeInsets.only(left: 20, top: 20),
      width: MediaQuery.of(context).size.width * .60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFF526799),
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/one.png',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            child: Text(
              "Hotel : Pullman",
              textAlign: TextAlign.start,
              style: Styles.headLineStyle3
                  .copyWith(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: double.infinity,
            child: Text(
              "Location : 8/32 Lilamati Building Nava Wadaj Ahmedabad.",
              textAlign: TextAlign.start,
              style: Styles.headLineStyle3
                  .copyWith(color: Colors.white, fontSize: 14,height: 1.4, fontWeight: FontWeight.w300 ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: double.infinity,
            child: Text(
              "Pin : 380001",
              textAlign: TextAlign.start,
              style: Styles.headLineStyle3
                  .copyWith(color: Colors.white, fontSize: 14,height: 1.4, fontWeight: FontWeight.w300 ),
            ),
          )
        ],
      ),
    );
  }
}
