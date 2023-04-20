import 'package:flutter/material.dart';
import 'package:juego_con_monica/models/category.dart';
import 'package:juego_con_monica/screens/question_screen.dart';

class CategoryScreen extends StatelessWidget {
  final List<Category> _categories = [
    Category(name: 'Animales', imagePath: 'assets/images/animals.jpg'),
    Category(name: 'Comida', imagePath: 'assets/images/food.jpg'),
    Category(name: 'Lugares', imagePath: 'assets/images/places.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adivinanzas'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: _categories.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      QuestionScreen(category: _categories[index]),
                ),
              );
            },
            child: GridTile(
              child: Image.asset(_categories[index].imagePath),
              footer: GridTileBar(
                backgroundColor: Colors.black45,
                title: Text(_categories[index].name),
              ),
            ),
          );
        },
      ),
    );
  }
}
