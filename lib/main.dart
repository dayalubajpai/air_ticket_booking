import 'package:air_ticket/provider/bottomMenu.dart';
import 'package:air_ticket/screens/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const AirTicket());
}

class AirTicket extends StatelessWidget {
  const AirTicket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=> BottomMenu())
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigationAp(),
    ),
    );
  }
}
