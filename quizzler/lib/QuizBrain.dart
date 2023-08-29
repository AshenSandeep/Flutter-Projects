import 'package:quizzler/Question.dart';

class QuizBrain{
   int _questionNo = 0;
  List<Question> questionBnak =[ Question('Colombo is capital of Sri Lanka.', true),
    Question('UoM made the first Electric vehical in the world.',  true),
    Question('Australia is the worls biggest country.', false)];

  String getQuestiontext(){
    return questionBnak[_questionNo].questionText;
  }

  bool getQuestionAnswer(){
    return questionBnak[_questionNo].questionAnswer;
  }

  void nextQuestionNo(){
    if(_questionNo < questionBnak.length-1){
      _questionNo++;
    }
    print(_questionNo);
  }
  int getQuestionNo(){
    return _questionNo;
  }
}