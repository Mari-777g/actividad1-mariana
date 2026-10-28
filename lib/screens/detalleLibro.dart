import 'package:flutter/material.dart';

class DetalleLibro extends StatelessWidget {
  final Map<String, dynamic> libro;

  const DetalleLibro({super.key, required this.libro});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(libro['titulo'])),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(libro['icono'], size: 80, color: Colors.indigo),
              const SizedBox(height: 16),
              Text(
                libro['titulo'],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Autor: ${libro['autor']}',
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 8),
              Text(
                'Categoría: ${libro['categoria']}',
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
