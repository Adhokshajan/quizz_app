class QuizQuestions{
  QuizQuestions(this.text,this.answers);
  final String text;
  final List<String> answers;

  List<String> getShuffeldList(){
    final shuffeledList= List.of(answers);
    shuffeledList.shuffle();
    return shuffeledList;

  }
}