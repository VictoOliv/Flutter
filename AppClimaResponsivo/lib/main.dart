import 'package:flutter/material.dart';
import 'pages/tela_clima.dart';

void main() {
  runApp(const ClimaApp());
}

class ClimaApp extends StatelessWidget {
  const ClimaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clima Agora',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const TelaClima(),
    );
  }
}
