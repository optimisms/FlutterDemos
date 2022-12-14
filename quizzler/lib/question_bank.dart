import 'quiz_question.dart';

class QuestionBank {
  int _qNum = 0;

  final List<QuizQuestion> _questionBank = [
    QuizQuestion('Some cats are actually allergic to humans.', true),
    QuizQuestion('You can lead a cow down stairs but not up stairs.', false),
    QuizQuestion(
        'Approximately one quarter of human bones are in the feet.', true),
    QuizQuestion('A slug\'s blood is green.', true),
    QuizQuestion('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    QuizQuestion('It is illegal to pee in the Ocean in Portugal.', true),
    QuizQuestion(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    QuizQuestion(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    QuizQuestion(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    QuizQuestion(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    QuizQuestion('Google was originally called \"Backrub\".', true),
    QuizQuestion(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    QuizQuestion(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  void reset() {
    _qNum = 0;
  }

  bool isFinished() {
    return _qNum >= _questionBank.length;
  }

  void updateQuestionNum() {
    if (!isFinished()) _qNum++;
  }

  String getQuestionText() {
    if (isFinished()) {
      return _questionBank[_questionBank.length - 1].getText();
    }
    return _questionBank[_qNum].getText();
  }

  bool getQuestionAnswer() {
    if (isFinished()) {
      return _questionBank[_questionBank.length - 1].getAnswer();
    }
    return _questionBank[_qNum].getAnswer();
  }
}
