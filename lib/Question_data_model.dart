class Question {
  final String name;
  final int id;
  final List<OptionModel> options;
  final int groupValue;
  Question(
      {required this.name,
        required this.id,
        required this.options,
        required this.groupValue});

  static Question fromJson(Map<String, dynamic> json) {
    return Question(
        name: json['name'],
        id: json['id'],
        groupValue: -1,
        options: (json['options'] as List)
            .map((e) => OptionModel.fromJson(e))
            .toList());
  }
}

class OptionModel {
  final String name;
  final int value;
  final int id;

  OptionModel({required this.name, required this.id, required this.value});

  static OptionModel fromJson(Map<String, dynamic> json) {
    return OptionModel(
        name: json['name'], id: json['id'], value: json['value']);
  }
}