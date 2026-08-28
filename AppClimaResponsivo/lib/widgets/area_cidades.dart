import 'package:flutter/material.dart';
import '../models/cidade_clima.dart';
import 'cidade_card.dart';

class AreaCidades extends StatelessWidget {
  final int colunas;
  final int limite;

  const AreaCidades({
    super.key,
    required this.colunas,
    required this.limite,
  });

  @override
  Widget build(BuildContext context) {
    final lista = cidades.take(limite).toList();

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: colunas,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: colunas == 1 ? 2.2 : 1.1,
      ),
      itemCount: lista.length,
      itemBuilder: (context, index) {
        return CidadeCard(cidade: lista[index]);
      },
    );
  }
}
