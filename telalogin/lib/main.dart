
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import './pages/tela_Revisao.dart';

void main() { //onde o app começa
  runApp(
    DevicePreview(
      builder: (dynamic context) => MeuApp(), //O builder é oque monta a interface, chamando a interface, meuapp
    ),
  );
}

class MeuApp extends StatelessWidget { //primeira interface, sendo stateless pois nao muda a tela, seu estado permanece o mesmo
  const MeuApp({super.key}); //superKey é o construtor, serve para o flutter identificar que criamos a classe (não é obrigatorio, mas é recomendado fazer para reconhecimento)

  @override
  Widget build(BuildContext context) {
    return MaterialApp( //Com o materialApp configura o aplicativo, padronizando o tema do app
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData( //ThemeData é o widget define o visual da tela
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          secondary: Colors.amber,
        ), 
      ),

      home: const TelaRevisao(), //chama a primeira tela, principal
    ); 
  }
}
