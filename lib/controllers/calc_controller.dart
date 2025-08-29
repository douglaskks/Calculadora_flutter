import 'package:calculadora/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import "package:function_tree/function_tree.dart";


class CalcController extends ChangeNotifier {

  var display = '';

  void onButtonClick(ButtonClick click){

    if(click is CommonButtonClick){
      display += click.value;

      notifyListeners();

    } else if(click is ClearButtonClick){
      display = '';
    } else if(click is EqualsButtoClick){
      final v = display.interpret();
      display = '$v';
    }

    notifyListeners();

  }

}