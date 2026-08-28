import 'package:flutter/material.dart';
import '../models/cidade_clima.dart';

class CidadeCard extends StatelessWidget {
  final CidadeClima cidade;

  const CidadeCard({super.key, required this.cidade});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(cidade.icone, size: 32),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    cidade.nome,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text('${cidade.temperatura}°C'),
            Text(cidade.condicao),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Ver detalhes'),
            ),
          ],
        ),
      ),
    );
  }
}
