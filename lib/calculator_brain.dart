import 'dart:math';

class CalculatorBrain{

  CalculatorBrain({this.height,this.weight});

  int height;
  int weight;
  double _bmi;

  String calculator(){

     _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);

  }

  String getResults(){

    if(_bmi >= 25){
       return 'overweight';
    }else if(_bmi > 18.5){
      return 'normal';
    }else{
      return 'underweight';
    }
  }

  String getInterpretation(){

    if(_bmi >= 25){
      return 'Your BMI is over 25 Please consult your medical provider about possible lifestyle changes that could help you lose weight';
    }else if(_bmi >= 18.5){
      return 'Your BMI is in normal range please continue to live a healthy lifestyle';
    }else{
      return 'Based on your results you are considered to be underweight please consult your medical provider about how to proceed';
    }

  }

}