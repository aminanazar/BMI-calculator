import 'dart:math';

import 'package:bmi_calculator/screens/input_page.dart';

import 'enums/Gender.dart';

class CalculatorBrain{

  CalculatorBrain({this.height,this.weight});

  final int weight;
  final int height;
  double _bmi;
  Gender selectedGender;


  String calculateBMI(Gender selectedGender){
    this.selectedGender=selectedGender;
    this._bmi = weight / pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if (_bmi >= 20.0) {
      return 'overweight';
    }else if(_bmi > 18.5){
      return 'Normal';
    }else{
      return 'Underweight';
    }
  }
  String getInterpretation(){
    if (_bmi >= 25 && selectedGender == Gender.male) {
      return 'you have a higher than normal weight.Try to exercise more.';
    }else if(_bmi > 18.5){
      return 'You have a normal body weight.Good job!';
    }else{
      return 'You have a lower than normal body weight.You ca eat a bit more.';
    }
  }
}