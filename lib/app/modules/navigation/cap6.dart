import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página de Navegación'),
      ),
      body: const Center(
        child: Text('Navigation'),
      ),
    );
  }
}
