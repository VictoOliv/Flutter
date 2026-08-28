import 'package:flutter/material.dart';

class TelaPerfil extends StatelessWidget {
  const TelaPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundColor: Colors.deepPurple,
              child: Icon(Icons.person, size: 70, color: Colors.white),
            ),
            const SizedBox(height: 20),
            const Text(
              'Usuário',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('Desenvolvedor Flutter'),
            const SizedBox(height: 30),
            Card(
              child: ListTile(
                leading: const Icon(Icons.email),
                title: const Text('Email'),
                subtitle: const Text('usuario@email.com'),
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.phone),
                title: const Text('Telefone'),
                subtitle: const Text('(31) 99999-9999'),
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.location_on),
                title: const Text('Cidade'),
                subtitle: const Text('Belo Horizonte - MG'),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Voltar'),
            ),
          ],
        ),
      ),
    );
  }
}
