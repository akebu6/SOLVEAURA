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
    text: "What is the derivative of the function f(x) = 4cos2x + logx + x?",
    options: [
      const CalculusOption(text: "8sin2x+1/x+x", isCorrect: false),
      const CalculusOption(text: "−8sin2x+1/x+x", isCorrect: false),
      const CalculusOption(text: "−8sin2x+1/x+1", isCorrect: true),
      const CalculusOption(text: "1", isCorrect: false),
    ],
    id: 0,
    correctAnswer:
    const CalculusOption(text: "−8sin2x+1/x+1", isCorrect: true),
  ),
  CalculusQuestion(
    text:
    "What is the integral of the function f(x) = sin 2x?",
    options: [
      const CalculusOption(text: "(1/2) sin x + C", isCorrect: false),
      const CalculusOption(text: "(-1/2) cos x + C", isCorrect: false),
      const CalculusOption(text: "(-1/2) cos 2x + C", isCorrect: true),
      const CalculusOption(text: "(1/2) sin 2x + C", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const CalculusOption(text: "(-1/2) cos 2x + C", isCorrect: true),
  ),

  CalculusQuestion(
    text:
    "Integral of the constant function f(x) = k is:",
    options: [
      const CalculusOption(text: "C", isCorrect: false),
      const CalculusOption(text: "0", isCorrect: false),
      const CalculusOption(text: "k+C", isCorrect: false),
      const CalculusOption(text: "kx+C", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const CalculusOption(text: "kx+C", isCorrect: true),
  ),

  CalculusQuestion(
    text:
    "Evaluate the approximate value of the definite integral of ln(x) over [2,4]",
    options: [
      const CalculusOption(text: "-6.3", isCorrect: false),
      const CalculusOption(text: "2.16", isCorrect: true),
      const CalculusOption(text: "-1.204", isCorrect: false),
      const CalculusOption(text: "0.9", isCorrect: false),
    ],
    id: 3,
    correctAnswer:
    const CalculusOption(text: "2.16 ", isCorrect: true),
  ),
  // other 4
];
