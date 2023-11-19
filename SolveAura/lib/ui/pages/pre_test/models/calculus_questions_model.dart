class CalculusQuestion {
  final int id;
  final String text;
  final List<CalculusOption> options;
  bool isLocked;
  CalculusOption? selectedWiidgetOption;
  CalculusOption? correctAnswer;
  // final int timeSeconds;

  CalculusQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
    //  required this.timeSeconds
  });

  CalculusQuestion copyWith() {
    return CalculusQuestion(
      id: id,
      text: text,
      options: options
          .map(
            (option) =>
            CalculusOption(text: option.text, isCorrect: option.isCorrect),
      )
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class CalculusOption {
  final String text;
  final bool isCorrect;

  const CalculusOption({
    required this.text,
    required this.isCorrect,
  });
}

final calculusQuestionsList = [
  CalculusQuestion(
    text: "What is the value of x in the given equation: 4x + 10 = 30?",
    options: [
      const CalculusOption(text: "5", isCorrect: true),
      const CalculusOption(text: "4", isCorrect: false),
      const CalculusOption(text: "2", isCorrect: false),
      const CalculusOption(text: "1", isCorrect: false),
    ],
    id: 0,
    correctAnswer:
    const CalculusOption(text: "5", isCorrect: true),
  ),
  CalculusQuestion(
    text:
    "How many types of methods are there to solve simultaneous algebraic equations?",
    options: [
      const CalculusOption(text: "2", isCorrect: true),
      const CalculusOption(text: "3", isCorrect: false),
      const CalculusOption(text: "4", isCorrect: false),
      const CalculusOption(text: "1", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const CalculusOption(text: "2", isCorrect: true),
  ),

  CalculusQuestion(
    text:
    "The two equations that have no values to satisfy both equations then this is called?",
    options: [
      const CalculusOption(text: "Consistent system ", isCorrect: false),
      const CalculusOption(text: "Constant system", isCorrect: false),
      const CalculusOption(text: "Inconsistent system", isCorrect: true),
      const CalculusOption(text: "Solution system", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const CalculusOption(text: "Inconsistent system", isCorrect: true),
  ),

  CalculusQuestion(
    text:
    "If A = 2x - y + 3xy, B = x + 2xy and C = 3y + xy, find the value of A+B+C",
    options: [
      const CalculusOption(text: "3xy–2y–6xy", isCorrect: false),
      const CalculusOption(text: "5xy-2y", isCorrect: false),
      const CalculusOption(text: "–3xy+2y+6xy", isCorrect: false),
      const CalculusOption(text: "3x+2y+6xy", isCorrect:true),
    ],
    id: 3,
    correctAnswer:
    const CalculusOption(text: "3x+2y+6xy ", isCorrect: true),
  ),
  // other 4
  CalculusQuestion(
    text:
    "A chocolate bar costs c pence and a drink costs d pence. Write down an expression for the cost of 2 chocolate bars and 2 drinks.",
    options: [
      const CalculusOption(text: "c + d", isCorrect: false),
      const CalculusOption(text: "2c + d", isCorrect: false),
      const CalculusOption(text: "2c + 2d", isCorrect: true),
      const CalculusOption(text: "2c - 2d", isCorrect: false),
    ],
    id: 4,
    correctAnswer: const CalculusOption(text: "2c + 2d", isCorrect: true),
  ),
  CalculusQuestion(
    text: "I'm a horizontal version of Column. Who am I?",
    options: [
      const CalculusOption(text: "Row ", isCorrect: true),
      const CalculusOption(text: "Divider", isCorrect: false),
      const CalculusOption(text: "Column", isCorrect: false),
      const CalculusOption(text: "Stack", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const CalculusOption(text: "Row", isCorrect: true),
  ),

  CalculusQuestion(
    text:
    "I align widgets to the top, bottom, center inside a Column. What am I?",
    options: [
      const CalculusOption(text: "Row", isCorrect: false),
      const CalculusOption(text: "Align", isCorrect: false),
      const CalculusOption(text: "Spacer", isCorrect: false),
      const CalculusOption(text: "MainAxisAlignment ", isCorrect: true),
    ],
    id: 6,
    correctAnswer:
    const CalculusOption(text: "MainAxisAlignment ", isCorrect: true),
  ),
  CalculusQuestion(
    text:
    "I align my Row or Column children differently based on available space. Who am I?",
    options: [
      const CalculusOption(text: "Expanded", isCorrect: false),
      const CalculusOption(text: "Flex ", isCorrect: true),
      const CalculusOption(text: "FittedBox", isCorrect: false),
      const CalculusOption(text: "Wrap", isCorrect: false),
    ],
    id: 7,
    correctAnswer: const CalculusOption(text: "Scoped Model", isCorrect: true),
  ),
];
