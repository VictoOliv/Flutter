import 'package:flutter/material.dart';
import '../widgets/menu_lateral.dart';

class TelaPerfil extends StatelessWidget {
  const TelaPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
        centerTitle: true,
      ),
      drawer: const MenuLateral(atual: 'perfil'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              child: Icon(Icons.person, size: 60),
            ),
            const SizedBox(height: 16),
            const Text(
              'Jogador Pro',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('Explorador de mundos virtuais'),
            const SizedBox(height: 24),
            Card(
              child: ListTile(
                leading: const Icon(Icons.stars),
                title: const Text('Pontuação'),
                subtitle: const Text('12.450 pts'),
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.videogame_asset),
                title: const Text('Jogos concluídos'),
                subtitle: const Text('28 jogos'),
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.emoji_events),
                title: const Text('Conquistas'),
                subtitle: const Text('15 conquistas'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
