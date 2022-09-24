import 'package:flutter/material.dart';
import 'package:test/Screens/app.dart';
import 'package:test/choices_helper.dart';

import '../Question_data_model.dart';

class Choices extends StatefulWidget {
  Choices({Key? key}) : super(key: key);

  @override
  State<Choices> createState() => _ChoicesState();
}

class _ChoicesState extends State<Choices> {
  List<Map<String, dynamic>> options = [
    {"name": "usually", "value": 100, "id": 1},
    {"name": "sometimes", "value": 70, "id": 2},
    {"name": "rarely", "value": 40, "id": 3},
    {"name": "never", "value": 0, "id": 4},
  ];

  late List<Map<String, dynamic>> questions = [
    {
      "id": 1,
      "name": "Have you been in a good mood lately?? ",
      "options": options
    },
    {
      "id": 2,
      "name": "Have you been sleeping well lately???",
      "options": options
    },
    {
      "id": 3,
      "name": "Have you had a good appetite lately??",
      "options": options
    },
    {
      "id": 4,
      "name": "Do you feel like crying on your own?",
      "options": options,
    },
    {
      "id": 5,
      "name": "Do you have someone to support you?",
      "options": options
    },
    {
      "id": 6,
      "name": "Do you feel that you have suicidal thoughts?",
      "options": options
    },
    {
      "id": 7,
      "name": "Do you feel nervous when meeting people?",
      "options": options
    },
    {
      "id": 8,
      "name": "Do you feel generally tired even without exertion?",
      "options": options
    },
    {
      "id": 9,
      "name": "Is your relationship with your family good?",
      "options": options
    },
    {
      "id": 10,
      "name":
          "Do you believe in the importance of behavioral and cognitive therapy?",
      "options": options
    },
    {
      "id": 11,
      "name": "Is seeing a psychiatrist embarrassing for you?",
      "options": options
    },
    {"id": 12, "name": "Do you frequently get headaches?", "options": options},
    {
      "id": 13,
      "name": "Do you feel a lack of self-confidence?",
      "options": options
    },
    {
      "id": 14,
      "name": "Do you feel any kind of physical, verbal or sexual abuse?",
      "options": options
    },
  ];

  List<Question> _questions = [];

  @override
  void initState() {
    super.initState();
    _questions = questions.map((e) => Question.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        ChoicesHelper.selectedValues.clear();
        Navigator.pop(context);

        return Future.value(true);
      },
      child: SafeArea(
        child: Scaffold(
            body: Column(children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 0.0, bottom: 25.0, top: 10.0, right: 25.0),
            child: Text(
              "Kindly fill out the below form, to evaluate the best therapists ",
              style: TextStyle(fontSize: 20.2, color: Colors.black),
            ),
          ),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.all(8),
                itemCount: _questions.length,
                itemBuilder: (context, index) {
                  return _buildQuestion(
                    _questions[index],
                    (int? value) {
                      var q = Question(
                          name: _questions[index].name,
                          id: _questions[index].id,
                          options: _questions[index].options,
                          groupValue: value!);
                      setState(() {
                        ChoicesHelper.selectedValues.add(value);
                        _questions[index] = q;
                      });
                    },
                  );
                }),
          ),
          ElevatedButton(
              onPressed: () {
                ChoicesHelper.calculateResults(context);
              },
              child: Text(
                'Continue',
                style: TextStyle(
                    fontSize: 15.2, color: Color.fromARGB(255, 32, 3, 99)),
              )),
        ])),
      ),
    );
  }

  _buildQuestion(Question question, Function(int?)? onChanged) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(question.name),
        Row(
          children: [
            Expanded(
              child: RadioListTile<int?>(
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                  activeColor: Colors.red,
                  visualDensity: VisualDensity(horizontal: -4),
                  title: Text(question.options[0].name),
                  value: question.options[0].value,
                  groupValue: question.groupValue,
                  onChanged: onChanged),
            ),
            Expanded(
              child: RadioListTile<int?>(
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                  activeColor: Colors.red,
                  visualDensity: VisualDensity(horizontal: -4),
                  title: Text(question.options[1].name),
                  value: question.options[1].value,
                  groupValue: question.groupValue,
                  onChanged: onChanged),
            ),
            Expanded(
              child: RadioListTile<int?>(
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                  activeColor: Colors.red,
                  visualDensity: VisualDensity(horizontal: -4),
                  title: Text(question.options[2].name),
                  value: question.options[2].value,
                  groupValue: question.groupValue,
                  onChanged: onChanged),
            ),
            Expanded(
              child: RadioListTile<int?>(
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                  activeColor: Colors.red,
                  visualDensity: VisualDensity(horizontal: -4),
                  title: Text(question.options[3].name),
                  value: question.options[3].value,
                  groupValue: question.groupValue,
                  onChanged: onChanged),
            ),
          ],
        ),
      ],
    );
  }
}
