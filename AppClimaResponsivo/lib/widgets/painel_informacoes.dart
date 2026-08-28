import 'package:flutter/material.dart';

class PainelInformacoes extends StatelessWidget {
  const PainelInformacoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Informações Extras',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            const Text('Umidade: 65%'),
            const Text('Vento: 12 km/h'),
            const Text('Sensação térmica: 30°C'),
            const Text('Nascer do sol: 06:10'),
          ],
        ),
      ),
    );
  }
}
