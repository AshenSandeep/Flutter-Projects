import 'dart:math';

class CalculatorBrain{
  final int height;
  final int weight;
  double result = 0;
  String interpritation = "";

  CalculatorBrain({required this.height,required this.weight});

  String calculateBMI(){
    result = weight/pow(height/100,2);
    return result.toStringAsFixed(1);
  }

  String getResult(){
    if(result>30){
      interpritation='You are more higher than normal body weight!';
      return 'Obesity';
    }else if(result>25){
      interpritation = 'Your body weight is too high!';
      return 'Overweight';
    }else if(result>18.5){
      interpritation = 'You have a normal body weight!';
      return 'Healthy weight';
    }else{
      interpritation = 'You weight is lower than normal body weight!';
      return 'Underweight';
    }
  }

  String getInterpritation(){
    if(result>30){
      return 'You are more higher than normal body weight!';

    }else if(result>25){
      return 'Your body weight is too high!';

    }else if(result>18.5){
      return 'You have a normal body weight!';

    }else{
      return  'You have a lower than normal body weight!';

    }
  }
}