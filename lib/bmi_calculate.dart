import 'dart:math';
class Calculation{
  Calculation({required this.height, required this.weight});
  int height;
  int weight;

  double _bmi = 0;
  String calculateBMI(){
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResultText(){
    if(_bmi >= 25){
      return 'Overweight';
    }else if(_bmi > 18.5){
      return 'Normal';
    }else{
      return 'Underweight';
    }
  }

  String getQoutes(){
    if(_bmi >= 25){
      return "You have a higher than normal body weight. Try to exercisee more";
    }else if(_bmi > 18.5){
      return "You have normal body weight. Good Job!";
    }else{
      return "You have a lower than normal body weight. You can eat a bit more";
    }
  }
}