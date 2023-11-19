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
    "I am a widget that manages a stack of child widgets and allows for navigating between them. What am I?",
    options: [
      const TrigOption(text: "Route", isCorrect: false),
      const TrigOption(text: "Scaffold", isCorrect: false),
      const TrigOption(text: "Navigator", isCorrect: true),
      const TrigOption(text: "PageView", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const TrigOption(text: "Navigator", isCorrect: true),
  ),
  TrigQuestion(
    text:
    " I am a method that removes the current route from the stack and returns to the previous route. What am I?",
    options: [
      const TrigOption(text: "Navigator.push()", isCorrect: false),
      const TrigOption(text: "Navigator.pop()", isCorrect: true),
      const TrigOption(
          text: "Navigator.removeRoute()", isCorrect: false),
      const TrigOption(text: " Route.dispose()", isCorrect: false),
    ],
    id: 1,
    correctAnswer:
    const TrigOption(text: "Navigator.pop()", isCorrect: true),
  ),
  TrigQuestion(
    text:
    "I am a widget property that must be passed to navigation methods like Navigator.push() to specify the next screen. What am I?",
    options: [
      const TrigOption(text: "context", isCorrect: true),
      const TrigOption(text: "Scaffold", isCorrect: false),
      const TrigOption(text: "State", isCorrect: false),
      const TrigOption(text: "Build", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const TrigOption(text: "context", isCorrect: true),
  ),

  TrigQuestion(
    text:
    " I am the method that closes all routes in the history stack to pop to the first route. What am I?",
    options: [
      const TrigOption(text: "Navigator.popUntil()", isCorrect: true),
      const TrigOption(text: " Navigator.reset()", isCorrect: false),
      const TrigOption(text: " Navigator.exitAll()", isCorrect: false),
      const TrigOption(text: "Navigator.clear()", isCorrect: false),
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
