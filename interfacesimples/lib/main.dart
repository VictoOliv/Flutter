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
      home: TeladDesign(),
    );
  }
}

class TeladDesign extends StatefulWidget {
  @override
  State<TeladDesign> createState() => _TeladDesignState();
}

class _TeladDesignState extends State<TeladDesign> {
  String mensagemFeedback = '';
  Color corFeedback = Colors.transparent;

  final String pergunta = 'Que bixo é esse';
  
  
  final String imagem = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGVzH1j_kw69Ll7kCucOFi1z_kNkvFhM7gSIbfdFpIUv0u-TdUSNn_wdJsLtrzoaF7pjlsqROs5Wm7ECbF15kqagxFJBEZ1c6mxQu7Hb1LKQ&s=10.com';
  
  final List<String> respostas = ['Capivara', 'Arara', 'Calopsita'];

  void verificarResposta(String respostaEscolhida) {
    if (respostaEscolhida == 'Calopsita') {
      setState(() {
        mensagemFeedback = 'Certo!';
        corFeedback = Colors.green;
      });
    } else {
      setState(() {
        mensagemFeedback = 'Errado, tente de novo';
        corFeedback = Colors.red;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final cores = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Jogo da Calopsita',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 2,
          ),
        ),
        backgroundColor: cores.secondary,
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextosPergunta(pergunta),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.network(
              imagem,
              height: 150,
              width: 150,
              fit: BoxFit.cover,
              // Evita que o app quebre se o link falhar temporariamente
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.broken_image, size: 150, color: Colors.grey);
              },
            ),
          ),
          
          if (mensagemFeedback.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Text(
                mensagemFeedback,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: corFeedback,
                ),
              ),
            ),

          BotaoResposta(respostas[0], () => verificarResposta(respostas[0])),
          BotaoResposta(respostas[1], () => verificarResposta(respostas[1])),
          BotaoResposta(respostas[2], () => verificarResposta(respostas[2])),
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
        onPressed: aoClicar,
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
