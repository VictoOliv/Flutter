import 'package:flutter/material.dart';
import '../models/cidade_clima.dart';
import '../widgets/area_cidades.dart';
import '../widgets/painel_informacoes.dart';

class TelaClima extends StatelessWidget {
  const TelaClima({super.key});

  String tipoDispositivo(double largura) {
    if (largura < 600) return 'Celular';
    if (largura < 900) return 'Tablet';
    return 'Desktop';
  }

  @override
  Widget build(BuildContext context) {
    final largura = MediaQuery.of(context).size.width;
    final tipo = tipoDispositivo(largura);
    final isCelular = largura < 600;
    final isTablet = largura >= 600 && largura < 900;
    final isDesktop = largura >= 900;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Clima Agora'),
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  color: Colors.blue.shade100,
                  child: AspectRatio(
                    aspectRatio: 16 / 4,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            '☀️ Clima Agora',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Confira as condições do tempo em diversas cidades.',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: categorias
                      .map(
                        (c) => Chip(label: Text(c)),
                      )
                      .toList(),
                ),
                const SizedBox(height: 12),
                Text('Largura atual: ${constraints.maxWidth.toInt()} px'),
                Text('Dispositivo: $tipo'),
                const SizedBox(height: 16),
                if (isDesktop)
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: AreaCidades(colunas: 3, limite: cidades.length),
                      ),
                      const SizedBox(width: 16),
                      const Expanded(
                        flex: 1,
                        child: PainelInformacoes(),
                      ),
                    ],
                  )
                else ...[
                  AreaCidades(
                    colunas: isCelular ? 1 : 2,
                    limite: isCelular ? 4 : cidades.length,
                  ),
                  const SizedBox(height: 16),
                  if (isTablet)
                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Ver previsão para 7 dias'),
                      ),
                    ),
                  const SizedBox(height: 16),
                  const PainelInformacoes(),
                ],
                if (isDesktop) ...[
                  const SizedBox(height: 16),
                  const Text('🌎 Dados climáticos atualizados em tempo real.'),
                ],
              ],
            ),
          );
        },
      ),
    );
  }
}
