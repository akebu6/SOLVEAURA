class WidgetQuestion {
  final int id;
  final String text;
  final List<WiidgetOption> options;
  bool isLocked;
  WiidgetOption? selectedWiidgetOption;
  WiidgetOption correctAnswer;

  WidgetQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });

  WidgetQuestion copyWith() {
    return WidgetQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
          WiidgetOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class WiidgetOption {
  final String? text;
  final bool? isCorrect;

  const WiidgetOption({
    this.text,
    this.isCorrect,
  });
}

final widgetQuestionsList = [
  WidgetQuestion(
    text:
    "What is the value of x in the given equation: 4x + 10 = 30?",
    options: [
      const WiidgetOption(text: "5", isCorrect: true),
      const WiidgetOption(text: "4", isCorrect: false),
      const WiidgetOption(text: "2", isCorrect: false),
      const WiidgetOption(text: "1", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const WiidgetOption(text: "5", isCorrect: true),
  ),
  WidgetQuestion(
      text:
      "How many types of methods are there to solve simultaneous algebraic equations?",
      options: [
        const WiidgetOption(text: "2", isCorrect: true),
        const WiidgetOption(text: "3", isCorrect: false),
        const WiidgetOption(text: "4", isCorrect: false),
        const WiidgetOption(text: "1", isCorrect: false),
      ],
      id: 1,
      correctAnswer: const WiidgetOption(text: "2", isCorrect: true)),
  WidgetQuestion(
      text:
      "The two equations that have no values to satisfy both equations then this is called?",
      options: [
        const WiidgetOption(text: "Consistent system ", isCorrect: false),
        const WiidgetOption(text: "Constant system", isCorrect: false),
        const WiidgetOption(text: "Inconsistent system", isCorrect: true),
        const WiidgetOption(text: "Solution system", isCorrect: false),
      ],
      id: 2,
      correctAnswer:
      const WiidgetOption(text: "Inconsistent system", isCorrect: true)),
  WidgetQuestion(
      text:
      "If A = 2x - y + 3xy, B = x + 2xy and C = 3y + xy, find the value of A+B+C",
      options: [
        const WiidgetOption(text: "3xy–2y–6xy", isCorrect: false),
        const WiidgetOption(text: "5xy-2y", isCorrect: false),
        const WiidgetOption(text: "–3xy+2y+6xy", isCorrect: false),
        const WiidgetOption(text: "3x+2y+6xy", isCorrect:true),
      ],
      id: 3,
      correctAnswer: const WiidgetOption(text: "3x+2y+6xy", isCorrect: true)),
  WidgetQuestion(
      text:
      "A chocolate bar costs c pence and a drink costs d pence. Write down an expression for the cost of 2 chocolate bars and 2 drinks.?",
      options: [
        const WiidgetOption(text: "c + d", isCorrect: false),
        const WiidgetOption(text: "2c + d", isCorrect: false),
        const WiidgetOption(text: "2c + 2d", isCorrect: true),
        const WiidgetOption(text: "2c - 2d", isCorrect: false),
      ],
      id: 4,
      correctAnswer: const WiidgetOption(text: "2c + 2d", isCorrect: true)),
];
