// To parse this JSON data, do
//
//     final quizResponse = quizResponseFromJson(jsonString);

import 'dart:convert';

QuizResponse quizResponseFromJson(String str) => QuizResponse.fromJson(json.decode(str));

String quizResponseToJson(QuizResponse data) => json.encode(data.toJson());

class QuizResponse {
  final int responseCode;
  final List<Result> results;

  QuizResponse({
    this.responseCode,
    this.results,
  });

  factory QuizResponse.fromJson(Map<String, dynamic> json) => QuizResponse(
    responseCode: json["response_code"] == null ? null : json["response_code"],
    results: json["results"] == null ? null : List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "response_code": responseCode == null ? null : responseCode,
    "results": results == null ? null : List<dynamic>.from(results.map((x) => x.toJson())),
  };
}

class Result {
  final Category category;
  final Type type;
  final Difficulty difficulty;
  final String question;
  final String correctAnswer;
  final List<String> incorrectAnswers;

  Result({
    this.category,
    this.type,
    this.difficulty,
    this.question,
    this.correctAnswer,
    this.incorrectAnswers,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    category: json["category"] == null ? null : categoryValues.map[json["category"]],
    type: json["type"] == null ? null : typeValues.map[json["type"]],
    difficulty: json["difficulty"] == null ? null : difficultyValues.map[json["difficulty"]],
    question: json["question"] == null ? null : json["question"],
    correctAnswer: json["correct_answer"] == null ? null : json["correct_answer"],
    incorrectAnswers: json["incorrect_answers"] == null ? null : List<String>.from(json["incorrect_answers"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "category": category == null ? null : categoryValues.reverse[category],
    "type": type == null ? null : typeValues.reverse[type],
    "difficulty": difficulty == null ? null : difficultyValues.reverse[difficulty],
    "question": question == null ? null : question,
    "correct_answer": correctAnswer == null ? null : correctAnswer,
    "incorrect_answers": incorrectAnswers == null ? null : List<dynamic>.from(incorrectAnswers.map((x) => x)),
  };
}

enum Category { GENERAL_KNOWLEDGE }

final categoryValues = EnumValues({
  "General Knowledge": Category.GENERAL_KNOWLEDGE
});

enum Difficulty { EASY }

final difficultyValues = EnumValues({
  "easy": Difficulty.EASY
});

enum Type { MULTIPLE }

final typeValues = EnumValues({
  "multiple": Type.MULTIPLE
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
