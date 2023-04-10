import 'package:air_ticket/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/icons_search_screen_utils.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgcolor,
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Text("What are \n you looking for ?",
                    style: Styles.headLineStyle1.copyWith(
                      fontSize: 32,
                    ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            FittedBox(
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Container(
                      child: Center(child: Text("Airline Ticket")),
                      margin: EdgeInsets.all(2),
                      height: 50,
                      width: MediaQuery.of(context).size.width * .99 / 2,
                      decoration: BoxDecoration(
                          color: Styles.bgcolor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20))),
                    ),
                    Container(
                      child: Center(
                          child: Text(
                        "Hotels",
                        style:
                            TextStyle(color: Colors.black12.withOpacity(0.7)),
                      )),
                      margin: EdgeInsets.all(2),
                      height: 50,
                      width: MediaQuery.of(context).size.width * .99 / 2,
                      decoration: BoxDecoration(
                          color: Styles.bgcolor.withOpacity(0.2),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              topRight: Radius.circular(20))),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            IconsSearchUtils(
              icon: Icons.flight_takeoff_rounded,
              icon_title: "Departure Time",
            ),
            SizedBox(
              height: 10,
            ),
            IconsSearchUtils(
              icon: Icons.flight_land_rounded,
              icon_title: "Arrival",
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                "Find Tickets",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              )),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Blogs", style: Styles.headLineStyle1),
                InkWell(
                  onTap: () {
                    print("view all Search Page clicked");
                  },
                  child: Text(
                    "View all",
                    style: TextStyle(color: Colors.blue.shade600),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    // width: MediaQuery.of(context).size.width/2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 220,
                          width: MediaQuery.of(context).size.width / 2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/three.png'),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Most Unique Hotels in Dubai",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(0),
                    // width: MediaQuery.of(context).size.width/2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                           Stack(
                             // alignment: AlignmentDirectional.topEnd,
                             children: [
                               Container(
                                 height: 135,
                                 width: MediaQuery.of(context).size.width*.43,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(10),
                                   color: Color(0xFF39b8b7),
                                 ),
                               ),
                               Positioned(
                                 right: -15,
                                 child: Container(
                                   height: 60,
                                   width: 60,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(30),
                                     border: Border.all(color: Color(0xFF189999), width: 8),
                                   ),
                                 ),
                               ),
                             ],
                           )
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 135,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
