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
    "A square pyramid has how many number of faces?",
    options: [
      const GeometryOption(text: "8", isCorrect: false),
      const GeometryOption(text: "6", isCorrect: false),
      const GeometryOption(text: "7", isCorrect: false),
      const GeometryOption(text: "5", isCorrect: true),
    ],
    id: 0,
    correctAnswer: const GeometryOption(text: "5", isCorrect: true),
  ),
  GeometryQuestion(
    text:
    "A triangle has the measure of its angles as 70 degrees, 60 degrees, and 70 degrees. What is the type of triangle?",
    options: [
      const GeometryOption(text: "Isosceles", isCorrect: false),
      const GeometryOption(text: "The triangle does not exist", isCorrect: true),
      const GeometryOption(text: "Scalene", isCorrect: false),
      const GeometryOption(text: "Equilateral", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const GeometryOption(text: "The triangle does not exist", isCorrect: true),
  ),
  GeometryQuestion(
    text:
    "What is the area of a circle with a diameter of 16?",
    options: [
      const GeometryOption(text: "16π", isCorrect: false),
      const GeometryOption(text: "8π", isCorrect: false),
      const GeometryOption(text: "6π", isCorrect: true),
      const GeometryOption(text: "128π", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const GeometryOption(text: "64π", isCorrect: true),
  ),

  GeometryQuestion(
    text:
    "What is the sum of the measures of the interior angles of a hexagon?",
    options: [
      const GeometryOption(text: "540°", isCorrect: false),
      const GeometryOption(text: "810°", isCorrect: false),
      const GeometryOption(text: "1080°", isCorrect: false),
      const GeometryOption(text: "720°", isCorrect: true),
    ],
    id: 3,
    correctAnswer: const GeometryOption(text: "720°", isCorrect: true),
  ),
  // other 4
];
