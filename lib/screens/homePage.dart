import 'package:flutter/material.dart';
import 'detalleLibro.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // Estructura de datos obligatoria de la guía
  final List<Map<String, dynamic>> catalogoLibros = const [
    {
      "id": 1,
      "titulo": "Cien años de soledad",
      "autor": "Gabriel García Márquez",
      "categoria": "Literatura",
      "icono": Icons.menu_book,
    },
    {
      "id": 2,
      "titulo": "El principito",
      "autor": "Antoine de Saint",
      "categoria": "Fábula",
      "icono": Icons.auto_stories,
    },
    {
      "id": 3,
      "titulo": "Don Quijote",
      "autor": "Miguel de Cervantes",
      "categoria": "Novela",
      "icono": Icons.book,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Biblioteca Escolar')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: catalogoLibros.length,
              itemBuilder: (context, index) {
                final libro = catalogoLibros[index];

                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetalleLibro(libro: libro),
                      ),
                    );
                  },

                  child: Card(
                    child: Stack(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(16),
                          width: double.infinity,
                          child: Column(
                            children: [
                              Icon(libro['icono'], size: 40),
                              Text(
                                libro['titulo'],
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(libro['autor']),
                            ],
                          ),
                        ),
                        const Positioned(
                          right: 10,
                          top: 10,
                          child: Icon(Icons.bookmark),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
