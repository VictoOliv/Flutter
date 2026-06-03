import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => MeuApp(),
    ),
  );
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 102, 0, 255),
          secondary: const Color.fromARGB(255, 69, 72, 170),
        ),
      ),

      // Define qual tela será exibida primeiro.
      home: TeladDesign(),
    );
  }
}

class TeladDesign extends StatefulWidget {
  @override
  State<TeladDesign> createState() => _TeladDesignState();
}

class _TeladDesignState extends State<TeladDesign> {
  var perguntaSelecionada = 0;

  final List<Map<String, dynamic>> perguntas = [
    {
      'pergunta': 'Qual animal é esse?',
      'imagem':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtp80N9SQ201AAWwPu6TRqc7wOJ-0CB8jr8aA-APcIlh0akyufF9IMYXSCIEUkqr72xQuTngCOe_aXWewXyLeMUPwBHoyePbQdcm15VERS&s=10',
      'respostas': ['Cachorro', 'Capivara', 'Rato'],
    },
    {
      'pergunta': 'Qual fruta é essa?',
      'imagem':
          'https://upload.wikimedia.org/wikipedia/commons/8/8a/Banana-Single.jpg',
      'respostas': ['Maçã', 'Banana', 'Laranja'],
    },
    {
      'pergunta': 'Qual cor aparece aqui?',
      'imagem':
          'https://upload.wikimedia.org/wikipedia/commons/f/fd/000080_Navy_Blue_Square.svg',
      'respostas': ['Azul', 'Verde', 'Vermelho'],
    },
  ];

  void responder() {
    setState(() {
      perguntaSelecionada++;

      if (perguntaSelecionada >= perguntas.length) {
        perguntaSelecionada = 0;
      }
    });

    print('Pergunta Respondida. Nova posição: $perguntaSelecionada');
  }

  @override
  Widget build(BuildContext context) {
    final cores = Theme.of(context).colorScheme;
    final perguntaAtual = perguntas[perguntaSelecionada];
    final List<String> respostas =
        List<String>.from(perguntaAtual['respostas']);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Perguntas',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 10,
          ),
        ),
        backgroundColor: cores.secondary,
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextosPergunta(perguntaAtual['pergunta']),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.network(
              perguntaAtual['imagem'],
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
          BotaoResposta(respostas[0], responder),
          BotaoResposta(respostas[1], responder),
          BotaoResposta(respostas[2], responder),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}

class BotaoResposta extends StatelessWidget {
  final String texto;
  final VoidCallback aoClicar;
  const BotaoResposta(this.texto, this.aoClicar, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () {
          print('Resposta escolhida: $texto');

          aoClicar();
        },
        child: Text(texto),
      ),
    );
  }
}

class TextosPergunta extends StatelessWidget {
  final String texto;

  const TextosPergunta(this.texto, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      child: Text(
        texto,
        style: const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
