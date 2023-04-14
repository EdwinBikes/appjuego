import 'package:flutter/material.dart';

List<Map<String, String>> preguntas = [
  {"pregunta": "¿Cuál es el país más grande del mundo?", "respuesta": "Rusia"},
  {"pregunta": "¿Quién escribió la Odisea?", "respuesta": "Homero"},
  {"pregunta": "¿Cuánto tiempo tarda la luz solar en llegar a la Tierra?", "respuesta": "8 minutos y 20 segundos"},
  // agregar más preguntas aqui 
];

int preguntaActual = 0;
String respuestaActual = preguntas[preguntaActual]["respuesta"];

Text(preguntas[preguntaActual]["pregunta"])


if (respuestaUsuario == respuestaActual) {
  // Respuesta correcta, avanza a la siguiente pregunta
  preguntaActual++;
  respuestaActual = preguntas[preguntaActual]["respuesta"];
  // Mostrar mensaje de correcto
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("¡Respuesta correcta!")));
} else {
  // Respuesta incorrecta, no avanza a la siguiente pregunta
  // Mostrar mensaje de incorrecto
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Respuesta incorrecta")));
}


if (preguntaActual == preguntas.length) {
  // Todas las preguntas han sido respondidas, mostrar mensaje de juego terminado
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("¡Juego terminado!")));
} else {
  // Aún quedan preguntas por responder, mostrar la siguiente pregunta
  respuestaActual = preguntas[preguntaActual]["respuesta"];
}
