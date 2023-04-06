import 'package:flutter/foundation.dart';

class BottomMenu with ChangeNotifier{
 var _widgetIndex = 0;
  int get widgetIndex  => _widgetIndex;
setIndex(int index){
  // print(index);
  _widgetIndex = index;
  notifyListeners();
}
}