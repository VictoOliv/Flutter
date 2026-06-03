import 'package:flutter/material.dart';
import './tela_detalhes.dart';

class TelaRevisao extends StatefulWidget {
  //mudar de estado o stateful
  const TelaRevisao({super.key});

  @override
  State<TelaRevisao> createState() => _TelaRevisaoState();
  //Onde fica os dados que podem mudar

  //No stateful chamamos uma classe pai, e da classe pai,
  //chamamos a classe filho que herda do pai para podermos utiliza-la
}

class _TelaRevisaoState extends State<TelaRevisao> {
  // ra classe que vai mudar de estado
  String mensagem = 'Clique em uma opção';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //corpo da aplicacao
      appBar: AppBar(
        //cabeçalho
        title: const Text('Revisao Flutter'),
      ),

      body: SafeArea(
        //Protege o conteudo de areas delimitando
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            //organiza os widgets
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //aceita varios widgets, mas ele é uilizado so em linhas e colunas(Column e Rows)
              const Icon(
                //utiliza icones da biblioteca do google
                Icons.phone_android,
                size: 80,
                color: Colors.blue,
              ),
              const SizedBox(height: 100),
              const Text(
                'Revisao de Flutter',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Vamos revisar widgets, layout, estilo, botoes, estado e navegacao.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 20),

              Container(
                  //funciona como uma caixa
                  width: 320,
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Text(
                      'O container funciona como uma caixa. Ele pode ter largura, padding, margin, cor e borda ',
                      textAlign: TextAlign.center),
                      ),
                       const SizedBox(height: 20),
              Text(
                mensagem,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Espaço adicionado para não amassar os botões
              Row(
                //organiza os componentes em uma linha
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    //botao
                    onPressed: () {
                      setState(() { //muda o estado do texto atual
                        mensagem = 'Voce clicou no botao azul';
                      });
                    },
                    child: const Text('Azul'),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 14,
                      ),
                      elevation: 4,
                    ),
                    onPressed: () {
                      setState(() {
                        mensagem = 'Voce clicou no botao destaque';
                      });
                    },
                    child: const Text('Destaque'),
                  ),
                ],
              ),
          
          const SizedBox(height: 20,),
          
          ElevatedButton.icon(//botao com um icone
          onPressed: () {
            Navigator.push(
              context, //indica one estamos no app
              MaterialPageRoute( //PageRoute cria rota para nova tela
                builder: (context) => const TelaDetalhes (), //O builder, informa qual tera sera aberta (TelaDetalhes)
              ),
            );
          },
          icon: const Icon(Icons.arrow_forward),//icone junto com o botao
          label: const Text('Ir para detalhes'),//Texto do botao
        )
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
          //botao flutuante
          onPressed: () {
            //a funcao que o botao faz
            setState(() {
              mensagem = 'Voce clicou no botao flutuante';
            });
          },
          child: const Icon(Icons.add)),
    );
  }
}
