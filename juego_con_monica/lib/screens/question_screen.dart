import 'package:flutter/material.dart';
import 'package:juego_con_monica/models/category.dart';
import 'package:juego_con_monica/models/question.dart';

class QuestionScreen extends StatefulWidget {
  final Category category;

  QuestionScreen({required this.category});

  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  late List<Question> _questions;
  late int _currentIndex;
  late int _score;

  @override
  void initState() {
    super.initState();
    _questions = widget.category.questions;
    _questions.shuffle();
    _currentIndex = 0;
    _score = 0;
  }

  void _answerQuestion(bool isCorrect) {
    if (isCorrect) {
      setState(() {
        _score++;
      });
    }
    setState(() {
      _currentIndex++;
    });
    if (_currentIndex == _questions.length) {
      _showResultDialog();
    }
  }

  void _showResultDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Resultados'),
          content: Text(
              'Obtuviste $_score puntos de ${_questions.length} preguntas.'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category.name),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Pregunta ${_currentIndex + 1} de ${_questions.length}',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              _questions[_currentIndex].text,
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              child: Text('Verdadero'),
              onPressed: () {
                _answerQuestion(_questions[_currentIndex].answer);
              },
            ),
            SizedBox(height: 8.0),
            ElevatedButton(
              child: Text('Falso'),
              onPressed: () {
                _answerQuestion(!_questions[_currentIndex].answer);
              },
            ),
          ],
        ),
      ),
    );
  }
}
