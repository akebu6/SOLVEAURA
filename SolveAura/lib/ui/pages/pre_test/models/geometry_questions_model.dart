class GeometryQuestion {
  final int id;
  final String text;
  final List<GeometryOption> options;
  bool isLocked;
  GeometryOption? selectedWiidgetOption;
  GeometryOption? correctAnswer;

  GeometryQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });
  GeometryQuestion copyWith() {
    return GeometryQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
          GeometryOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class GeometryOption {
  final String text;
  final bool isCorrect;

  const GeometryOption({
    required this.text,
    required this.isCorrect,
  });
}

final geometryQuestionsList = [
  GeometryQuestion(
    text:
    "I am a simple method to manage state within a StatefulWidget. What am I?",
    options: [
      const GeometryOption(text: "MobX", isCorrect: false),
      const GeometryOption(text: "Bloc", isCorrect: false),
      const GeometryOption(text: "setState", isCorrect: true),
      const GeometryOption(text: "Riverpod", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const GeometryOption(text: "setState", isCorrect: true),
  ),
  GeometryQuestion(
    text:
    "I am a Flutter package that enables reactive programming and observable state objects. ",
    options: [
      const GeometryOption(text: "Riverpod", isCorrect: false),
      const GeometryOption(text: "Mobx", isCorrect: true),
      const GeometryOption(text: "Provider", isCorrect: false),
      const GeometryOption(text: "setState", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const GeometryOption(text: "Mobx", isCorrect: true),
  ),
  GeometryQuestion(
    text:
    "What is the name of the Flutter state management approach that uses a widget tree to hold the app state and update the UI, and is similar to Provider?",
    options: [
      const GeometryOption(text: "Riverpod", isCorrect: true),
      const GeometryOption(text: "Bloc", isCorrect: false),
      const GeometryOption(text: "Redux", isCorrect: false),
      const GeometryOption(text: "Mobx", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const GeometryOption(text: "Riverpod", isCorrect: true),
  ),

  GeometryQuestion(
    text:
    "I am a lightweight and powerful solution for Flutter, combining state management and dependency injection. What am I?",
    options: [
      const GeometryOption(text: "Getx", isCorrect: true),
      const GeometryOption(text: "Riverpod", isCorrect: false),
      const GeometryOption(text: "Redux", isCorrect: false),
      const GeometryOption(text: "Get_it", isCorrect: false),
    ],
    id: 3,
    correctAnswer: const GeometryOption(text: "Getx", isCorrect: true),
  ),
  // other 4
];
