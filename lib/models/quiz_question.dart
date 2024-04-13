class QuizQuestion {
  QuizQuestion(this.text, this.answer);
  final String text;
  final List<String> answer;
  List<String> get shuffeledAnswer {
    final shuffeldlist =
        List.of(answer); // storing acutal list without changing
    shuffeldlist.shuffle(); // shuffling actual list
    return shuffeldlist; // print shufffeld list
  }
}
