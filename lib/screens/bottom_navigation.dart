import 'package:air_ticket/screens/home_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/bottomMenu.dart';

class BottomNavigationAp extends StatefulWidget {
  const BottomNavigationAp({Key? key}) : super(key: key);

  @override
  State<BottomNavigationAp> createState() => _BottomNavigationApState();
}

class _BottomNavigationApState extends State<BottomNavigationAp> {
  static final List<Widget> _WidgetOption =<Widget>[
    AirPlaneHome(),
    Center(child: const Text("Search")),
    Center(child: const Text("Ticket")),
    Center(child: const Text("Person"))
  ];
  @override
  Widget build(BuildContext context) {
    final bottomProvider = Provider.of<BottomMenu>(context);
    return Scaffold(
      body: Consumer<BottomMenu>(builder: (context, value, child){
        return _WidgetOption[value.widgetIndex];
      }),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: bottomProvider.widgetIndex,
        onTap: bottomProvider.setIndex,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.blueGrey.shade300,
        items: const [
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            label: "Home"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: "Search"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: "Ticket"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: "Profile"),
      ],
      ),
    );
  }
}
