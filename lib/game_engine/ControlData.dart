class ControlData {
  int score;
  int totalQuestions;

  ControlData() {
    this.score = 0;
    this.totalQuestions = 0;
  }
  void updateScoreCorrectAnswer() {
    score++;
    totalQuestions++;
  }

  int getTotalQuestions() {
    return totalQuestions;
  }

  void updateTotal() {
    totalQuestions++;
  }
}
