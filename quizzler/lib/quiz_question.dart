class QuizQuestion {
  final String _text;
  final bool _answer;

  QuizQuestion(this._text, this._answer);

  String getText() {
    return _text;
  }

  bool getAnswer() {
    return _answer;
  }

  bool get answer => _answer;
  String get text => _text;
}
