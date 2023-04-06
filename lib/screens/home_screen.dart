import 'package:air_ticket/screens/ticket_view.dart';
import 'package:air_ticket/utils/app_style.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class AirPlaneHome extends StatelessWidget {
  const AirPlaneHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFeeedf2),
      body: ListView(
        children: [
          Container(
            padding : EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
               Row(
                 crossAxisAlignment: CrossAxisAlignment.end ,
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text("Good Morning", style: Styles.headLineStyle3,),
                       SizedBox(height: 5,),
                       Text("Book Tickets",style: Styles.headLineStyle1,),
                     ],
                   ),
                   Container(
                     height: 50,
                     width: 50,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       image: DecorationImage(
                         image: AssetImage(
                           'assets/images/img_1.png'
                         )
                       )
                     ),
                   )
                 ],
               ),
                SizedBox(
                  height: 25,
                ),
                Container(
                 padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFF4F6FD)
                  ),
                  child: Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_search_regular, color: Styles.subheading,),
                      Text("Search", style: TextStyle(color: Styles.subheading),)
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcoming Flights", style: Styles.headLineStyle1),
                    InkWell(
                      onTap: (){
                        print("view all clicked");
                      },
                      child: Text("View all", style: TextStyle(
                        color: Colors.blue.shade600
                      ),),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TicketView()
        ],
      ),

    );
  }
}
