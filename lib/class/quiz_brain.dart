import 'package:quiz_app/class/question.dart';

class QuizBrain {
  int _questionNumber = 0;
  int rightAnswer = 0;
  int wrongAnswer = 0;

  List<Question> _questionBankMath = [
    Question('The slope of a vertical line is undefined', true),
    Question('Two lines with positive slopes can be perpendicular.', false),
    Question('The additive inverse of -10 is 10.', true),
    Question('The product of two positive numbers is NOT positive', true),
    Question('x + 2 = 7 is called an inequality.', true),
    Question('The absolute value of a real negative number is negative', false),
    Question(
        ' -23 = (-2)3', false),
    Question('30% of x is equal to 0.03x', true),
    Question(
        'x is at most equal to 9" is written mathematically as x',
        false)
  ];

  List<Question> _questionBankPhysics = [
    Question('Objects fall at the same rate because they are affected by the same gravitational force.', true),
    Question('An object can be moving without a force acting on it.', false),
    Question('Newtons second law deals with the inertia of an object.', true),
    Question('Young modulus is equal to the strain divided by the stress.', false),
    Question('The term "radioactivity" was coined by Antoine Henri Becquerel.', true),
    Question('Galileo Galilei was the first to notice that objects fall at the same rate. ', true),
    Question('The erg is a unit of force in the cgs system.', true),
    Question('The physicist Neils Bohr proposed a model for the atom in which the electrons orbit the nucleus in fixed orbits.', true),
  ];

  List<Question> _questionBankBiology = [
    Question('Inertia is a vector quantity. It has both magnitude and direction.', true),
    Question('Inertia is directly proportional to an object', false),
    Question('Inertia is directly proportional to an object', false),
    Question('Before we get started, does anyone want to get out?', true),
    Question('Friction is a force that opposes motion', false),
    Question('Mass and weight are the same.', false),
    Question('An object at rest has no inertia.', true),
    Question('In an object is not moving, no forces are acting upon it.’', true),
  ];

  void nextQuestionA() {
    if (_questionNumber < _questionBankMath.length - 1) {
      _questionNumber++;
    }
  }

  void nextQuestionI() {
    if (_questionNumber < _questionBankPhysics.length - 1) {
      _questionNumber++;
    }
  }

  void nextQuestionC() {
    if (_questionNumber < _questionBankBiology.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionsA() {
    return _questionBankMath[_questionNumber].questionText;
  }

  bool getCorrectAnswerA() {
    return _questionBankMath[_questionNumber].questionAswer;
  }

  String getQuestionsI() {
    return _questionBankPhysics[_questionNumber].questionText;
  }

  bool getCorrectAnswerI() {
    return _questionBankPhysics[_questionNumber].questionAswer;
  }

  String getQuestionsC() {
    return _questionBankBiology[_questionNumber].questionText;
  }

  bool getCorrectAnswerC() {
    return _questionBankBiology[_questionNumber].questionAswer;
  }

  bool isFinishedA() {
    if (_questionNumber >= _questionBankMath.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  bool isFinishedI() {
    if (_questionNumber >= _questionBankPhysics.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  bool isFinishedC() {
    if (_questionNumber >= _questionBankBiology.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
/*
  void scorePercentageI() {
    double getCorrectAnswerI =
        double.parse(_questionBankIronMan.toString()) / 100;

  } */

}