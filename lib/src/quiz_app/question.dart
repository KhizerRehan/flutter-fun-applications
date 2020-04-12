class Question {
  String _questionText;
  bool _questionAnswer;

  Question(questionText, questionAnswer) {
    this._questionText = questionText;
    this._questionAnswer = questionAnswer;
  }

  get questionText {
    return this._questionText;
  }

  get questionAnswer {
    return this._questionAnswer;
  }
}
