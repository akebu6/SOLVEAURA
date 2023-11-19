class AlgebraQuestion {
  final int id;
  final String text;
  final List<AlgebraOption> options;
  bool isLocked;
  AlgebraOption? selectedWiidgetOption;
  AlgebraOption correctAnswer;

  AlgebraQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });

  AlgebraQuestion copyWith() {
    return AlgebraQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
          AlgebraOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class AlgebraOption {
  final String? text;
  final bool? isCorrect;

  const AlgebraOption({
    this.text,
    this.isCorrect,
  });
}

final algebraQuestionsList = [
  AlgebraQuestion(
    text:
    "What is the value of x in the given equation: 4x + 10 = 30?",
    options: [
      const AlgebraOption(text: "5", isCorrect: true),
      const AlgebraOption(text: "4", isCorrect: false),
      const AlgebraOption(text: "2", isCorrect: false),
      const AlgebraOption(text: "1", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const AlgebraOption(text: "5", isCorrect: true),
  ),
  AlgebraQuestion(
      text:
      "How many types of methods are there to solve simultaneous algebraic equations?",
      options: [
        const AlgebraOption(text: "2", isCorrect: true),
        const AlgebraOption(text: "3", isCorrect: false),
        const AlgebraOption(text: "4", isCorrect: false),
        const AlgebraOption(text: "1", isCorrect: false),
      ],
      id: 1,
      correctAnswer: const AlgebraOption(text: "2", isCorrect: true)),
  AlgebraQuestion(
      text:
      "The two equations that have no values to satisfy both equations then this is called?",
      options: [
        const AlgebraOption(text: "Consistent system ", isCorrect: false),
        const AlgebraOption(text: "Constant system", isCorrect: false),
        const AlgebraOption(text: "Inconsistent system", isCorrect: true),
        const AlgebraOption(text: "Solution system", isCorrect: false),
      ],
      id: 2,
      correctAnswer:
      const AlgebraOption(text: "Inconsistent system", isCorrect: true)),
  AlgebraQuestion(
      text:
      "If A = 2x - y + 3xy, B = x + 2xy and C = 3y + xy, find the value of A+B+C",
      options: [
        const AlgebraOption(text: "3xy–2y–6xy", isCorrect: false),
        const AlgebraOption(text: "5xy-2y", isCorrect: false),
        const AlgebraOption(text: "–3xy+2y+6xy", isCorrect: false),
        const AlgebraOption(text: "3x+2y+6xy", isCorrect:true),
      ],
      id: 3,
      correctAnswer: const AlgebraOption(text: "3x+2y+6xy", isCorrect: true)),
  AlgebraQuestion(
      text:
      "A chocolate bar costs c pence and a drink costs d pence. Write down an expression for the cost of 2 chocolate bars and 2 drinks.?",
      options: [
        const AlgebraOption(text: "c + d", isCorrect: false),
        const AlgebraOption(text: "2c + d", isCorrect: false),
        const AlgebraOption(text: "2c + 2d", isCorrect: true),
        const AlgebraOption(text: "2c - 2d", isCorrect: false),
      ],
      id: 4,
      correctAnswer: const AlgebraOption(text: "2c + 2d", isCorrect: true)),
];
