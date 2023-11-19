class TrigQuestion {
  final int id;
  final String text;
  final List<TrigOption> options;
  bool isLocked;
  TrigOption? selectedWiidgetOption;
  TrigOption? correctAnswer;

  TrigQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });

  TrigQuestion copyWith() {
    return TrigQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
          TrigOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class TrigOption {
  final String text;
  final bool isCorrect;

  const TrigOption({
    required this.text,
    required this.isCorrect,
  });
}

final trigQuestionsList = [
  TrigQuestion(
    text:
    "What is the value of sin A if the value of tan A is 4/3?",
    options: [
      const TrigOption(text: "2/3", isCorrect: false),
      const TrigOption(text: "2/5", isCorrect: false),
      const TrigOption(text: "4/5", isCorrect: true),
      const TrigOption(text: "3/5", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const TrigOption(text: "4/5r", isCorrect: true),
  ),
  TrigQuestion(
    text:
    "The trigonometric functions are defined in a _______ triangle",
    options: [
      const TrigOption(text: "Equiangular", isCorrect: false),
      const TrigOption(text: "Right angled", isCorrect: true),
      const TrigOption(text: "Acute angled", isCorrect: false),
      const TrigOption(text: "Obtuse angled", isCorrect: false),
    ],
    id: 1,
    correctAnswer:
    const TrigOption(text: "Right angled", isCorrect: true),
  ),
  TrigQuestion(
    text:
    "The trigonometric function that is defined by the ratio of length of adjacent side over the hypotenuse is known as:",
    options: [
      const TrigOption(text: "sine", isCorrect: false),
      const TrigOption(text: "tangent", isCorrect: false),
      const TrigOption(text: "cosine", isCorrect: true),
      const TrigOption(text: "cosecant", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const TrigOption(text: "cosecant", isCorrect: true),
  ),

  TrigQuestion(
    text:
    "What is the reciprocal of secant function?",
    options: [
      const TrigOption(text: "sin", isCorrect: false),
      const TrigOption(text: "tan", isCorrect: false),
      const TrigOption(text: "cot", isCorrect: false),
      const TrigOption(text: "cos", isCorrect: true),
    ],
    id: 3,
    correctAnswer:
    const TrigOption(text: "Navigator.popUntil()", isCorrect: true),
  ),
  // other 4
  TrigQuestion(
    text:
    " I am a method that adds a named route to the top of the navigator stack. Who am I?",
    options: [
      const TrigOption(text: "Navigator.navigate()", isCorrect: false),
      const TrigOption(text: " Navigator.openRoute()", isCorrect: false),
      const TrigOption(text: " Navigator.routeTo()", isCorrect: false),
      const TrigOption(text: " Navigator.pushNamed()", isCorrect: true),
    ],
    id: 4,
    correctAnswer: const TrigOption(
      text: " Navigator.pushNamed()",
      isCorrect: true,
    ),
  ),
  TrigQuestion(
    text:
    " I am a method that replaces the entire route stack with a single route. Who am I?",
    options: [
      const TrigOption(
          text: " Navigator.pushReplacement()", isCorrect: true),
      const TrigOption(text: "Navigator.reset()", isCorrect: false),
      const TrigOption(
          text: " Navigator.replaceAll()", isCorrect: false),
      const TrigOption(
          text: "  Navigator.clearPush()", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const TrigOption(
        text: "Navigator.pushReplacement()", isCorrect: true),
  ),

  TrigQuestion(
    text:
    "I am a method that closes routes until a condition is met. Who am I?",
    options: [
      const TrigOption(text: "Navigator.exitUntil()", isCorrect: false),
      const TrigOption(
          text: "Navigator.closeAllUntil(),", isCorrect: false),
      const TrigOption(text: "Navigator.popWhile()", isCorrect: false),
      const TrigOption(text: " Navigator.popUntil()", isCorrect: true),
    ],
    id: 6,
    correctAnswer:
    const TrigOption(text: " Navigator.popUntil()", isCorrect: true),
  ),
  TrigQuestion(
    text:
    "I am an event fired when a route is popped to transition back. Who am I?",
    options: [
      const TrigOption(text: "onWillPop", isCorrect: true),
      const TrigOption(text: "onPop", isCorrect: false),
      const TrigOption(text: "didPop", isCorrect: false),
      const TrigOption(text: "popRoute", isCorrect: false),
    ],
    id: 7,
    correctAnswer: const TrigOption(text: "onWillPop", isCorrect: true),
  ),

  TrigQuestion(
    text:
    "I am a method that adds a route to the history without removing current. Who am I?",
    options: [
      const TrigOption(text: "openRoute()", isCorrect: false),
      const TrigOption(text: "onDestroy()", isCorrect: false),
      const TrigOption(text: "Navigator.push()", isCorrect: true),
      const TrigOption(text: "overlayRoute()", isCorrect: false),
    ],
    id: 8,
    correctAnswer:
    const TrigOption(text: "Navigator.push()", isCorrect: true),
  ),
];
