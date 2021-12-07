import 'dart:math';
class Calculator{
  Calculator({this.height,this.weight});

  int height;
  int weight;
  double _bmi;



  String calculateBMI(){
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi >= 25){
      return 'Overweight';
    }
    else if(_bmi > 18.5){
      return 'Normal';
    }
    else{
      return 'Underweight';
    }


  }
  String getMessage(){
    if(_bmi >= 25){
      return 'You are fat dude.You need to exercise more.';
    }
    else if(_bmi >= 18.5){
      return 'You have normal body mass index.Keep it going.Stay sharp!';
    }
    else{
      return 'Are you sick or something.You should eat more.';
    }

  }

}