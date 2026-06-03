import 'package:flutter/material.dart';
import 'package:telalogin/pages/tela_revisao.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({super.key});

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  final TextEditingController emailController = TextEditingController();//Controla o campo de email
  final TextEditingController senhaController = TextEditingController();//Controla o campo de senha

  String mensagemErro = '';//Guarda a mensagem de erro que pode aparecer na tela

bool emailValido(String email) {
  final regex = RegExp(r'^[\w\.-]+@[\w\.-]+\.\w+$');
  return regex.hasMatch(email);
}

  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Login'),
    ),
    body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.lock,
              size: 80,
              color: Colors.blue,
            ),

            const SizedBox(height: 20),
            const Text(
              'Tela de Login',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),
            TextField(
              controller: emailController,
              obscureText: false,
              decoration: const InputDecoration(
                labelText: 'Email',
                hintText: 'Digite seu email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),

            const SizedBox(height: 10),
            TextField(
              controller: senhaController,
              obscureText: false,
              decoration: const InputDecoration(
                labelText: 'Senha',
                hintText: 'Digite sua senha',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.password),
              ),
            ),

            const SizedBox(height: 15),
            Text(
              mensagemErro,
              style: const TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                String email = emailController.text;
                String senha = senhaController.text;

                if (!emailValido(email)) {
                  setState(() {
                    mensagemErro = 'Digite um email válido';
                  });
                } else if (senha.isEmpty) {
                  setState(() {
                    mensagemErro = 'Digite sua senha';
                  });
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TelaRevisao())
                  );
                }
              },
              icon: const Icon(Icons.login),
              label: const Text('Entrar'),
            ),
          ],
        ),
      ),
    ),
  );
}

}