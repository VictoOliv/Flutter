# **Menu Sanduíche no Flutter**

## **Contexto**

Você recebeu o código inicial de um aplicativo chamado **Game Explorer**.

O aplicativo já possui uma tela inicial com:

* Uma `AppBar`;  
* Um ícone relacionado a jogos;  
* Um texto de apresentação;  
* Cards com informações;  
* Um widget personalizado;  
* Configuração do `DevicePreview`.

Seu desafio será pesquisar e implementar um **menu sanduíche**, permitindo que o usuário acesse outras áreas do aplicativo.

Esse recurso ainda não foi desenvolvido em sala. Portanto, será necessário pesquisar, testar soluções, analisar erros e adaptar os códigos encontrados.

---

## **Objetivo**

Adicionar ao aplicativo um menu lateral que possa ser aberto pelo ícone de três linhas localizado no canto superior esquerdo da `AppBar`.

O menu deverá permitir que o usuário navegue entre diferentes telas do aplicativo.

---

## **Código inicial**

Antes de executar o projeto, instale o `DevicePreview`:

```shell
flutter pub add device_preview
```

Substitua o conteúdo do arquivo `lib/main.dart` pelo código abaixo:

```
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const MeuApp(),
    ),
  );
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Game Explorer',

      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),

      home: const TelaInicio(),
    );
  }
}

class TelaInicio extends StatelessWidget {
  const TelaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Game Explorer'),
        centerTitle: true,
      ),

      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Icon(
                Icons.sports_esports,
                size: 100,
              ),

              SizedBox(height: 16),

              Text(
                'Bem-vindo ao Game Explorer!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10),

              Text(
                'Explore jogos, descubra novas aventuras '
                'e organize seus conteúdos favoritos.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),

              SizedBox(height: 30),

              CardJogo(
                icone: Icons.explore,
                titulo: 'Explorar',
                descricao:
                    'Descubra novos jogos, mundos e personagens.',
              ),

              SizedBox(height: 12),

              CardJogo(
                icone: Icons.favorite,
                titulo: 'Favoritos',
                descricao:
                    'Organize os jogos que você mais gosta.',
              ),

              SizedBox(height: 12),

              CardJogo(
                icone: Icons.emoji_events,
                titulo: 'Conquistas',
                descricao:
                    'Acompanhe seus desafios e recompensas.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardJogo extends StatelessWidget {
  final IconData icone;
  final String titulo;
  final String descricao;

  const CardJogo({
    super.key,
    required this.icone,
    required this.titulo,
    required this.descricao,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Row(
          children: [
            Icon(
              icone,
              size: 50,
            ),

            const SizedBox(width: 16),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titulo,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  Text(descricao),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

---

## **O que deverá ser desenvolvido**

A partir do código fornecido, implemente:

* Um menu sanduíche;  
* Um cabeçalho no menu;  
* Pelo menos três opções com texto e ícone;  
* Pelo menos duas novas telas;  
* Navegação entre as telas;  
* Fechamento do menu após selecionar uma opção;  
* Forma de retornar ou acessar outra área;  
* Testes utilizando o `DevicePreview`.

Não apague a tela inicial fornecida. Ela deverá continuar fazendo parte do aplicativo.

---

## **Menu sanduíche**

O menu deverá ser aberto pelo ícone de três linhas exibido na `AppBar`.

Dentro dele, deverá existir um cabeçalho contendo:

* Nome do aplicativo;  
* Ícone, imagem ou avatar;  
* Uma frase relacionada ao tema.

O menu deverá possuir pelo menos três opções.

Exemplos:

* Início;  
* Perfil;  
* Favoritos;  
* Conquistas;  
* Configurações;  
* Sobre.

Os nomes das opções podem ser modificados de acordo com as telas criadas.

---

## **Novas telas**

Além da tela inicial, crie pelo menos duas novas telas.

### **Exemplo de tela de perfil**

A tela poderá apresentar:

* Nome do jogador;  
* Avatar;  
* Pontuação;  
* Jogos concluídos;  
* Número de conquistas;  
* Pequena descrição.

### **Exemplo de tela de favoritos**

A tela poderá apresentar:

* Nome dos jogos;  
* Categoria;  
* Ícone ou imagem;  
* Botão para visualizar detalhes;  
* Indicação de favorito.

Esses exemplos não são obrigatórios. Você poderá criar outras telas relacionadas ao universo do aplicativo.

---

## **Pesquisa**

Pesquise como implementar os recursos necessários.

Sugestões de busca:

```
Flutter Drawer
Flutter menu sanduíche
Flutter Scaffold drawer
Flutter DrawerHeader
Flutter ListTile
Flutter fechar Drawer
```

Dê preferência à documentação oficial do Flutter.

---

## **O que você deverá descobrir**

Ao concluir a atividade, você deverá conseguir explicar:

* Qual widget cria o menu lateral;  
* Em qual propriedade do `Scaffold` ele é colocado;  
* Como o ícone sanduíche aparece na `AppBar`;  
* Como criar opções com texto e ícone;  
* Para que serve o `onTap`;  
* Como fechar o menu;  
* Como abrir uma nova tela;  
* Como voltar para a tela anterior;  
* Qual é a diferença entre `Navigator.push` e `Navigator.pop`.

---

## **Testes com DevicePreview**

Teste o aplicativo em pelo menos:

* Um celular com tela pequena;  
* Um celular com tela maior;  
* Um tablet.

Verifique:

* Se o menu abre corretamente;  
* Se as opções funcionam;  
* Se os textos cabem nas telas;  
* Se existe algum overflow;  
* Se as páginas continuam organizadas;  
* Se a navegação funciona em diferentes dispositivos.

---

## **Requisitos obrigatórios**

O projeto deverá possuir:

* A tela inicial fornecida;  
* Um menu sanduíche;  
* Um cabeçalho no menu;  
* Pelo menos três opções no menu;  
* Texto e ícone nas opções;  
* Pelo menos duas novas telas;  
* Navegação funcionando;  
* Fechamento correto do menu;  
* Interface sem overflow;  
* Uso do `DevicePreview`.

---

## **Regras da atividade**

* Utilize o código fornecido como ponto de partida;  
* Não copie um projeto completo sem compreender o código;  
* Adapte as soluções encontradas ao aplicativo;  
* Teste o projeto após cada alteração;  
* Antes de pedir ajuda, realize uma pesquisa e faça pelo menos uma tentativa;  
* Esteja preparado para explicar os widgets utilizados.

Ao solicitar ajuda ao professor, apresente:

1. O que você tentou fazer;  
2. O que pesquisou;  
3. Qual código foi utilizado;  
4. Qual erro ou comportamento apareceu.

---

## **Resultado esperado**

Ao final da atividade, o usuário deverá conseguir:

1. Abrir o menu sanduíche;  
2. Visualizar as opções;  
3. Selecionar uma opção;  
4. Acessar a tela correspondente;  
5. Voltar ou acessar outra área;  
6. Utilizar o aplicativo em diferentes tamanhos de tela.

Os requisitos representam apenas o funcionamento mínimo. O projeto poderá receber novas telas, animações, imagens, listas, configurações, temas e outras funcionalidades criadas pelo aluno.

