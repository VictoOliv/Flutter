import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) => MyApp()));
}
 
void resposta(){
  print("Respondido");
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body: Column(
          children: [
            Text("Qual seu nome?"),
            ElevatedButton(onPressed: resposta,
             child: Text("Resposta 1")),
             ElevatedButton(
              onPressed: () => print("Respondido 2"),
              child: Text("Resposta 2"),
             ),
              ElevatedButton(
              onPressed: () {
                print("Respondido 3");
              },
              child: Text("Resposta 3"),
             ),
          ],
        )
      )
    );
  }
}
