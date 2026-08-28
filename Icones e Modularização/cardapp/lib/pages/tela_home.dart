import 'package:flutter/material.dart';
import '../widgets/card_icone.dart';
import 'tela_ajuda.dart';
import 'tela_configuracoes.dart';
import 'tela_perfil.dart';

class TelaHome extends StatefulWidget {
  const TelaHome({super.key});

  @override
  State<TelaHome> createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {
  String mensagem = 'Clique em um botão para ver a mensagem';

  void mudarMensagem(String novaMensagem) {
    setState(() {
      mensagem = novaMensagem;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu App de Ícones'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              'Bem-vindo ao aplicativo!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('Escolha uma das opções abaixo:'),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                mensagem,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            CardIcone(
              icone: Icons.person,
              titulo: 'Perfil',
              descricao: 'Veja as informações do usuário.',
              textoBotao: 'Ver perfil',
              cor: Colors.blue,
              onPressed: () {
                mudarMensagem('Você clicou em Perfil');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TelaPerfil()),
                );
              },
            ),
            CardIcone(
              icone: Icons.settings,
              titulo: 'Configurações',
              descricao: 'Altere as preferências do aplicativo.',
              textoBotao: 'Configurar',
              cor: Colors.green,
              onPressed: () {
                mudarMensagem('Você clicou em Configurações');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TelaConfiguracoes()),
                );
              },
            ),
            CardIcone(
              icone: Icons.favorite,
              titulo: 'Favoritos',
              descricao: 'Veja seus itens favoritos.',
              textoBotao: 'Abrir',
              cor: Colors.red,
              onPressed: () {
                mudarMensagem('Você clicou em Favoritos');
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      padding: const EdgeInsets.all(20),
                      height: 200,
                      child: Column(
                        children: [
                          const Text(
                            'Seus Favoritos',
                            style: TextStyle(fontSize: 22),
                          ),
                          const Text('Lista rápida dos itens favoritos.'),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Fechar'),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
            CardIcone(
              icone: Icons.help,
              titulo: 'Ajuda',
              descricao: 'Tire suas dúvidas sobre o app.',
              textoBotao: 'Ver ajuda',
              cor: Colors.orange,
              onPressed: () {
                mudarMensagem('Você clicou em Ajuda');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TelaAjuda()),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          mudarMensagem('Você clicou no botão flutuante');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
