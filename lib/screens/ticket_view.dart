import 'package:air_ticket/utils/app_style.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import '../utils/ticket_plane.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.90,
       // height: 100,
      child: Container(
        margin: const EdgeInsets.only(left: 20),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                color: Color(0xFF526799)),
              height: 100,
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "NDLS",
                        style: Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      TicketPlane(),
                      Expanded(
                        child: Stack(
                            // textDirection: TextDirection.ltr,
                            children: [
                              SizedBox(
                                height: 24,
                                child: LayoutBuilder(builder:
                                    (BuildContext context, BoxConstraints constraints) {
                                  print(constraints.constrainWidth());
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        (constraints.constrainWidth() / 8).floor(),
                                            (index) => SizedBox(
                                          child: Container(
                                            width: 3,
                                            height: 1,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              color: Colors.white,
                                            ),
                                          ),
                                        )),
                                  );
                                }),
                              ),
                              Center(
                                child: Transform.rotate(
                                  angle: 1.6,
                                  child: const Icon(
                                    Icons.airplanemode_active_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ]),
                      ),
                      TicketPlane(),
                      Expanded(child: Container()),
                      Text(
                        "CNB",
                        style: Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: 100
                          ,child: Text("New Delhi", style: Styles.headLineStyle4.copyWith(color: Colors.white),)),
                      Text("1H 30M", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                      SizedBox(
                          width: 100,
                          child: Text("Kanpur", textAlign: TextAlign.end,style: Styles.headLineStyle4.copyWith(color: Colors.white),)),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 21,
              width: double.infinity,
              color: Styles.orangecolor,
              child: SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 10,
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(25), bottomRight: Radius.circular(25)),
                          color: Colors.white
                      ),
                    ),
                    Expanded(
                      child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints){
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  List.generate((constraints.minWidth/20).floor(), (index) => Center(
                            child: Container(
                              width: 5,
                              height: 1,
                              decoration: BoxDecoration(
                                  color: Styles.bgcolor
                              ),
                            ),
                          ),),
                        );
                      }),
                    ),
                    Container(
                      width: 10,
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(25), bottomLeft: Radius.circular(25)),
                          color: Colors.white
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                color: Styles.orangecolor
              ),
              child: Container(
                padding: EdgeInsets.only(left: 16,right: 16, top: 10,bottom: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width/4,
                          child: Text(
                            "1 May",
                            style: Styles.headLineStyle3.copyWith(color: Colors.white),
                          ),
                        ),
                        // Expanded(child: Container()),
                        SizedBox(
                          width: MediaQuery.of(context).size.width/4,
                          child: Text(
                            "08:00 AM",
                            textAlign: TextAlign.center,
                            style: Styles.headLineStyle3.copyWith(color: Colors.white),
                          ),
                        ),
                        // Expanded(child: Container()),
                        SizedBox(
                          width: MediaQuery.of(context).size.width/4,
                          child: Text(
                            "23",
                            textAlign: TextAlign.end,
                            style: Styles.headLineStyle3.copyWith(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex:1,
                            child: Text("Date", textAlign: TextAlign.start, style: Styles.headLineStyle4.copyWith(color: Colors.white),)),
                        Expanded(
                            flex:3,
                            child: Text("Departure Time", textAlign: TextAlign.center, style: Styles.headLineStyle4.copyWith(color: Colors.white, height: 1.2),)),
                        Expanded(
                            flex:1,child: Text("Number", textAlign: TextAlign.end,style: Styles.headLineStyle4.copyWith(color: Colors.white),)),
                      ],
                    )
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     SizedBox(
                    //         width: 100
                    //         ,child: Text("1 May", style: Styles.headLineStyle3.copyWith(color: Colors.white),)),
                    //     Text("08:00 AM", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                    //     SizedBox(
                    //         width: 100,
                    //         child: Text("23", textAlign: TextAlign.end,style: Styles.headLineStyle3.copyWith(color: Colors.white),)),
                    //   ],
                    // ),
                    // SizedBox(
                    //   height: 8,
                    // ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     SizedBox(
                    //         width: MediaQuery.of(context).size.width/4,
                    //         child: Text("Date", style: Styles.headLineStyle4.copyWith(color: Colors.white),)),
                    //     SizedBox(width:MediaQuery.of(context).size.width/4,child: Text("Departure time", style: Styles.headLineStyle4.copyWith(color: Colors.white),)),
                    //     SizedBox(width:MediaQuery.of(context).size.width/4,child: Text("Number", textAlign: TextAlign.end,style: Styles.headLineStyle4.copyWith(color: Colors.white),)),
                    //   ],
                    // )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
