import 'package:air_ticket/utils/app_style.dart';
import 'package:flutter/material.dart';

class HotelCartScreen extends StatelessWidget {
  final Map<String, dynamic>hotel;
  const HotelCartScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    String firstFewWordslocation(String bigSentence){

      int startIndex = 0, indexOfSpace =2;

      for(int i = 0; i <6; i++){
        indexOfSpace = bigSentence.indexOf(' ', startIndex);
        if(indexOfSpace == -1){     //-1 is when character is not found
          return bigSentence;
        }
        startIndex = indexOfSpace + 1;
      }

      return bigSentence.substring(0, indexOfSpace) + '...';
    }

    String firstFewWords(String bigSentence){

      int startIndex = 0, indexOfSpace =2;

      for(int i = 0; i < 3; i++){
        indexOfSpace = bigSentence.indexOf(' ', startIndex);
        if(indexOfSpace == -1){     //-1 is when character is not found
          return bigSentence;
        }
        startIndex = indexOfSpace + 1;
      }

      return bigSentence.substring(0, indexOfSpace) + '...';
    }

    print(hotel);
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
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              "Hotel : ${firstFewWords( hotel['name'])}",
              textAlign: TextAlign.start,
              style: Styles.headLineStyle3
                  .copyWith(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              "Location : ${firstFewWordslocation(hotel['location'])}",
              textAlign: TextAlign.start,
              style: Styles.headLineStyle3
                  .copyWith(color: Colors.white, fontSize: 14,height: 1.4, fontWeight: FontWeight.w300 ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              "Pin : ${hotel['pin']}",
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
