import 'package:flutter/material.dart';

void main() {
  runApp(const MoodApp());
}

class MoodApp extends StatelessWidget {
  const MoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mood App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const TelaHumor(),
    );
  }
}

class TelaHumor extends StatefulWidget {
  const TelaHumor({super.key});

  @override
  State<TelaHumor> createState() => _TelaHumorState();
}

class _TelaHumorState extends State<TelaHumor> {
  String humor = '';
  Color cor = Colors.grey.shade200;
  IconData icone = Icons.sentiment_neutral;
  String texto = 'Escolha seu humor';
  String mensagemExtra = '';
  double tamanho = 120;
  double borda = 8;
  double opacidade = 0;

  void selecionarHumor(String novoHumor) {
    setState(() {
      humor = novoHumor;
      opacidade = 0;
      if (novoHumor == 'Feliz') {
        cor = Colors.amber;
        icone = Icons.sentiment_very_satisfied;
        texto = 'Hoje estou feliz!';
        mensagemExtra = 'Que bom ver essa energia positiva!';
        tamanho = 160;
        borda = 40;
      } else if (novoHumor == 'Triste') {
        cor = Colors.blueGrey;
        icone = Icons.sentiment_dissatisfied;
        texto = 'Estou me sentindo triste.';
        mensagemExtra = 'Tudo bem sentir-se assim às vezes.';
        tamanho = 100;
        borda = 12;
      } else {
        cor = Colors.lightBlue;
        icone = Icons.cloud;
        texto = 'Momento de tranquilidade.';
        mensagemExtra = 'Respire fundo e relaxe.';
        tamanho = 140;
        borda = 30;
      }
    });
    Future.delayed(const Duration(milliseconds: 400), () {
      if (mounted) {
        setState(() {
          opacidade = 1;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mood App'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              'Mood App',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('Escolha um humor e veja a tela mudar com animação.'),
            const SizedBox(height: 24),
            Center(
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                width: tamanho + 80,
                height: tamanho + 40,
                decoration: BoxDecoration(
                  color: cor,
                  borderRadius: BorderRadius.circular(borda),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(icone, size: tamanho * 0.4),
                    const SizedBox(height: 8),
                    Text(
                      texto,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            AnimatedOpacity(
              opacity: opacidade,
              duration: const Duration(milliseconds: 600),
              child: Text(
                humor.isEmpty
                    ? ''
                    : 'Você escolheu o humor $humor.\n$mensagemExtra',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 24),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              alignment: WrapAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => selecionarHumor('Feliz'),
                  child: const Text('Feliz'),
                ),
                ElevatedButton(
                  onPressed: () => selecionarHumor('Triste'),
                  child: const Text('Triste'),
                ),
                ElevatedButton(
                  onPressed: () => selecionarHumor('Calmo'),
                  child: const Text('Calmo'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
