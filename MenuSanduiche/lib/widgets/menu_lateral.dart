import 'package:flutter/material.dart';
import 'tela_favoritos.dart';
import 'tela_perfil.dart';

class MenuLateral extends StatelessWidget {
  final String atual;

  const MenuLateral({super.key, required this.atual});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.deepPurple),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.sports_esports, size: 48, color: Colors.white),
                SizedBox(height: 8),
                Text(
                  'Game Explorer',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                Text(
                  'Sua aventura começa aqui!',
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Início'),
            selected: atual == 'inicio',
            onTap: () {
              Navigator.pop(context);
              if (atual != 'inicio') {
                Navigator.pop(context);
              }
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Perfil'),
            selected: atual == 'perfil',
            onTap: () {
              Navigator.pop(context);
              if (atual != 'perfil') {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const TelaPerfil()),
                );
              }
            },
          ),
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text('Favoritos'),
            selected: atual == 'favoritos',
            onTap: () {
              Navigator.pop(context);
              if (atual != 'favoritos') {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const TelaFavoritos()),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
