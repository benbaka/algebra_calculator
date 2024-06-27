
import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier {
  int _inputNumber = 0;
  double _halfNumber = 0.0;

  int get counter => _inputNumber;

  double get halfNumber => _halfNumber;

  set counter(int value){
    _inputNumber = value;
    notifyListeners();
  }

  void halfNumberOperation(){
    _halfNumber = _inputNumber/2.0;
    notifyListeners();
  }


}