import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Flutter Layout';

    // Definindo uma lista de cores para cada Container
    final List<Color> colors = [
      Color.fromARGB(255, 235, 32, 18),
      Color.fromARGB(255, 235, 32, 18),
      Color.fromARGB(255, 235, 32, 18),
      Colors.green,
      Color.fromARGB(255, 235, 32, 18),
      Color.fromARGB(255, 235, 32, 18),
      Color.fromARGB(255, 7, 56, 97),
      Colors.yellow,
      Color.fromARGB(255, 235, 32, 18),
      Colors.green,
      Colors.yellow,
      Colors.yellow,
      Color.fromARGB(255, 7, 56, 97),
      Colors.yellow,
      Colors.yellow,
      Colors.yellow,
      Colors.green,
      Colors.green,
      Color.fromARGB(255, 235, 32, 18),
      Colors.yellow,
      Colors.green,
      Colors.green,
      Colors.green,
      Color.fromARGB(255, 7, 56, 97),
      // Adicione mais cores conforme necessário
    ];

    return MaterialApp(
      title: title,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: GridView.count(
          crossAxisCount: 4,
          children: List.generate(24, (index) {
            // Usar o índice para definir a cor
            Color color = colors[index % colors.length];

            return Center(
              child: Container(
                decoration: BoxDecoration(
                  color: color,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
