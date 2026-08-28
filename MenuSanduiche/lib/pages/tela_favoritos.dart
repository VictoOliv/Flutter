import 'package:flutter/material.dart';
import '../widgets/menu_lateral.dart';

class TelaFavoritos extends StatelessWidget {
  const TelaFavoritos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favoritos'),
        centerTitle: true,
      ),
      drawer: const MenuLateral(atual: 'favoritos'),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _JogoFavorito(
            nome: 'Aventura Pixel',
            categoria: 'RPG',
            icone: Icons.castle,
          ),
          _JogoFavorito(
            nome: 'Corrida Turbo',
            categoria: 'Esporte',
            icone: Icons.directions_car,
          ),
          _JogoFavorito(
            nome: 'Mistério Noturno',
            categoria: 'Aventura',
            icone: Icons.nightlight,
          ),
        ],
      ),
    );
  }
}

class _JogoFavorito extends StatelessWidget {
  final String nome;
  final String categoria;
  final IconData icone;

  const _JogoFavorito({
    required this.nome,
    required this.categoria,
    required this.icone,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Icon(icone, size: 40),
        title: Text(nome),
        subtitle: Text(categoria),
        trailing: const Icon(Icons.favorite, color: Colors.red),
        onTap: () {},
      ),
    );
  }
}
