class LayOutQuestion {
  final int id;
  final String text;
  final List<LayOutOption> options;
  bool isLocked;
  LayOutOption? selectedWiidgetOption;
  LayOutOption? correctAnswer;
  // final int timeSeconds;

  LayOutQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
    //  required this.timeSeconds
  });

  LayOutQuestion copyWith() {
    return LayOutQuestion(
      id: id,
      text: text,
      options: options
          .map(
            (option) =>
            LayOutOption(text: option.text, isCorrect: option.isCorrect),
      )
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class LayOutOption {
  final String text;
  final bool isCorrect;

  const LayOutOption({
    required this.text,
    required this.isCorrect,
  });
}

final layOutQuestionsList = [
  LayOutQuestion(
    text: "What is the value of x in the given equation: 4x + 10 = 30?",
    options: [
      const LayOutOption(text: "5", isCorrect: true),
      const LayOutOption(text: "4", isCorrect: false),
      const LayOutOption(text: "2", isCorrect: false),
      const LayOutOption(text: "1", isCorrect: false),
    ],
    id: 0,
    correctAnswer:
    const LayOutOption(text: "5", isCorrect: true),
  ),
  LayOutQuestion(
    text:
    "How many types of methods are there to solve simultaneous algebraic equations?",
    options: [
      const LayOutOption(text: "2", isCorrect: true),
      const LayOutOption(text: "3", isCorrect: false),
      const LayOutOption(text: "4", isCorrect: false),
      const LayOutOption(text: "1", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const LayOutOption(text: "2", isCorrect: true),
  ),

  LayOutQuestion(
    text:
    "The two equations that have no values to satisfy both equations then this is called?",
    options: [
      const LayOutOption(text: "Consistent system ", isCorrect: false),
      const LayOutOption(text: "Constant system", isCorrect: false),
      const LayOutOption(text: "Inconsistent system", isCorrect: true),
      const LayOutOption(text: "Solution system", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const LayOutOption(text: "Inconsistent system", isCorrect: true),
  ),

  LayOutQuestion(
    text:
    "If A = 2x - y + 3xy, B = x + 2xy and C = 3y + xy, find the value of A+B+C",
    options: [
      const LayOutOption(text: "3xy–2y–6xy", isCorrect: false),
      const LayOutOption(text: "5xy-2y", isCorrect: false),
      const LayOutOption(text: "–3xy+2y+6xy", isCorrect: false),
      const LayOutOption(text: "3x+2y+6xy", isCorrect:true),
    ],
    id: 3,
    correctAnswer:
    const LayOutOption(text: "3x+2y+6xy ", isCorrect: true),
  ),
  // other 4
  LayOutQuestion(
    text:
    "A chocolate bar costs c pence and a drink costs d pence. Write down an expression for the cost of 2 chocolate bars and 2 drinks.",
    options: [
      const LayOutOption(text: "c + d", isCorrect: false),
      const LayOutOption(text: "2c + d", isCorrect: false),
      const LayOutOption(text: "2c + 2d", isCorrect: true),
      const LayOutOption(text: "2c - 2d", isCorrect: false),
    ],
    id: 4,
    correctAnswer: const LayOutOption(text: "2c + 2d", isCorrect: true),
  ),
  LayOutQuestion(
    text: "I'm a horizontal version of Column. Who am I?",
    options: [
      const LayOutOption(text: "Row ", isCorrect: true),
      const LayOutOption(text: "Divider", isCorrect: false),
      const LayOutOption(text: "Column", isCorrect: false),
      const LayOutOption(text: "Stack", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const LayOutOption(text: "Row", isCorrect: true),
  ),

  LayOutQuestion(
    text:
    "I align widgets to the top, bottom, center inside a Column. What am I?",
    options: [
      const LayOutOption(text: "Row", isCorrect: false),
      const LayOutOption(text: "Align", isCorrect: false),
      const LayOutOption(text: "Spacer", isCorrect: false),
      const LayOutOption(text: "MainAxisAlignment ", isCorrect: true),
    ],
    id: 6,
    correctAnswer:
    const LayOutOption(text: "MainAxisAlignment ", isCorrect: true),
  ),
  LayOutQuestion(
    text:
    "I align my Row or Column children differently based on available space. Who am I?",
    options: [
      const LayOutOption(text: "Expanded", isCorrect: false),
      const LayOutOption(text: "Flex ", isCorrect: true),
      const LayOutOption(text: "FittedBox", isCorrect: false),
      const LayOutOption(text: "Wrap", isCorrect: false),
    ],
    id: 7,
    correctAnswer: const LayOutOption(text: "Scoped Model", isCorrect: true),
  ),
];
