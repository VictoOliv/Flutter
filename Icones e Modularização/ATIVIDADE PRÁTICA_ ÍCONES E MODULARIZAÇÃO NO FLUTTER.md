# Guia 1

## **Atividade Prática 3.1: Meu App de Ícones**

Crie um aplicativo Flutter chamado **Meu App de Ícones**.

O objetivo da atividade é praticar **ícones**, **textos**, **botões**, **Container**, **Row**, **Column**, **ThemeData**, **StatelessWidget**, **StatefulWidget**, **setState** e **modularização**.

A atividade deve ser feita com a seguinte estrutura:

![][image1]

No arquivo `main.dart`, crie o `MaterialApp` e configure um tema usando `ThemeData`.

No arquivo `tela_home.dart`, crie a tela principal do aplicativo usando `Scaffold`, `AppBar` e `body`.

No arquivo `card_icone.dart`, crie um widget personalizado chamado `CardIcone`.

O `CardIcone` deve receber por parâmetro:

* IconData icone;  
* String titulo;  
* String descricao;  
* String textoBotao;  
* Color cor;

Na tela principal, crie pelo menos **4 cards diferentes** usando o mesmo widget `CardIcone`.

Cada card deve ter:

* Um ícone diferente  
  Um título  
  Uma descrição curta  
  Um botão  
  Uma cor de destaque

Os cards devem usar `Container` para estilização, com `padding`, `margin`, cor de fundo ou borda arredondada.

Dentro do card, use `Row` para organizar o ícone ao lado das informações.

Use `Column` para organizar o título, a descrição e o botão.

O botão ainda não deve navegar para outra tela. Ele deve apenas exibir uma mensagem na própria tela usando o setState.

Exemplo de mensagens:

* Você clicou em Perfil  
* Você clicou em Configurações  
* Você clicou em Favoritos

A mensagem deve aparecer na tela principal, abaixo ou acima dos cards.

---

## **Observação sobre IconData**

No Flutter, `IconData` é o tipo usado para representar um ícone.

Exemplo:

**IconData icone;**

Ele permite que o widget receba ícones diferentes, como:

* **Icons.home**  
* **Icons.person**  
* **Icons.settings**  
* **Icons.favorite**

Depois, o ícone recebido pode ser exibido com o widget `Icon`:

Icon(icone)

Assim, o mesmo `CardIcone` pode ser reutilizado com ícones diferentes.

[Você pode ver mais icones aqui](https://fonts.google.com/icons?icon.size=24&icon.color=%23e3e3e3)

---

## **Ideias de cards**

Perfil  
Configurações  
Favoritos  
Mensagens  
Ajuda  
Notificações

---

## **Regras**

O código não pode ficar todo no `main.dart`.

A tela principal deve ficar em `pages/tela_home.dart`.

O card personalizado deve ficar em `widgets/card_icone.dart`.

O widget `CardIcone` deve ser reutilizado pelo menos 4 vezes.

A tela principal deve usar `StatefulWidget`, pois a mensagem muda com `setState`.

O `CardIcone` pode ser `StatelessWidget`.

Os botões devem funcionar apenas mostrando uma mensagem, sem navegação.

---

## **Desafio extra**

Adicionar um `FloatingActionButton` que muda a mensagem da tela.

Personalizar os botões usando `styleFrom`.

Usar `TextStyle` para deixar os títulos maiores e em negrito.

# Guia 2

# **Atividade Prática 3.2: Navegação e Modal no Flutter**

## **Continuação da atividade: Meu App de Ícones**

Continue o projeto **Meu App de Ícones** desenvolvido na atividade anterior.

Na primeira parte, o aplicativo tinha cards com ícone, título, descrição, botão, cor de destaque e mensagem usando `setState`. Agora, os botões deverão evoluir para duas novas ações: abrir novas páginas usando `Navigator` e abrir um modal inferior usando `showModalBottomSheet`.

A atividade continua seguindo a proposta de modularização da Parte 1, em que o código não deve ficar todo no `main.dart`, a tela principal deve ficar separada e o widget `CardIcone` deve ser reutilizado.

Os temas dos cards continuam sendo de escolha livre. É possível criar cards sobre filmes, jogos, estudos, músicas, livros, esportes, perfil, configurações, favoritos, mensagens ou qualquer outro tema.

---

## **Entrega pelo GitHub**

A entrega deverá ser feita pelo GitHub.

O repositório deve conter o projeto Flutter completo e funcionando.

A entrega poderá ser feita de duas formas:

Se o repositório estiver **público**, envie apenas o link do repositório.

Se o repositório estiver **privado**, adicione o usuário abaixo como colaborador:

* **IgorLucasBrazz**

## 

## 

## 

## **Estrutura obrigatória**

Dentro da pasta `lib`, o projeto deverá continuar organizado em arquivos separados.

lib/  
│  
├── main.dart  
│  
├── pages/  
│   ├── tela\_home.dart  
│   └── outras páginas criadas  
│  
└── widgets/  
    └── card\_icone.dart

**Cada nova página criada no aplicativo deve ficar em um arquivo separado dentro da pasta `pages`.**

Não coloque todas as páginas dentro do mesmo arquivo.

---

## **O que deve ser criado**

Crie novas páginas para serem abertas ao clicar nos botões dos cards.

Cada nova página deve ter sua própria classe e seu próprio arquivo.

Não é necessário seguir um nome obrigatório para os arquivos das novas páginas, mas eles devem ficar dentro da pasta:

lib/pages/

---

## **Alteração no CardIcone**

O widget `CardIcone` deve continuar sendo reutilizado.

Agora, além das informações que ele já recebia, ele também deve receber uma função para o clique do botão.

O `CardIcone` deve receber:

* IconData icone;  
* String titulo;  
* String descricao;  
* String textoBotao;  
* Color cor;  
* VoidCallback onPressed;

Dentro do botão do card, use o `onPressed` recebido por parâmetro.

---

## **Requisitos da tela principal**

A tela principal deve ter:

* `Scaffold`  
* `AppBar`  
* `Column`  
* Pelo menos 4 cards usando o widget `CardIcone`  
* Cada card deve ter:  
* Um ícone diferente  
* Um título  
* Uma descrição curta  
* Um botão  
* Uma cor de destaque  
* Ao clicar nos botões, o aplicativo deverá executar ações diferentes.

---

## **Requisitos de navegação**

Pelo menos alguns botões devem abrir novas páginas usando:

* Navigator.push

com:

* MaterialPageRoute

Cada botão deve levar para uma página relacionada ao card escolhido.

Exemplo:

* O card de Filmes pode abrir uma página sobre Filmes.  
* O card de Jogos pode abrir uma página sobre Jogos.  
* O card de Estudos pode abrir uma página sobre Estudos.  
* O card de Músicas pode abrir uma página sobre Músicas.

Os temas são livres.

---

## **Requisitos das novas páginas**

Cada nova página deve ter:

* `Scaffold`  
* `AppBar`  
* `Column`  
* `Icon`  
* `Text`  
* Um botão para voltar  
* O botão de voltar deve usar:  
* Navigator.pop(context);  
* Cada página deve mostrar informações relacionadas ao card clicado.  
* As páginas devem ser diferentes entre si, podendo mudar textos, ícones, cores ou informações exibidas.

---

## **Requisito do modal inferior**

Além da navegação entre páginas, o projeto deve ter pelo menos **um botão que abre um modal inferior**.

O modal deve ser feito usando:

* showModalBottomSheet

Dentro do modal, devem aparecer:

* `Container`  
* `Column`  
* `Text`  
* `ElevatedButton`  
* O botão dentro do modal deve fechar o modal usando:  
* Navigator.pop(context);

O modal pode ser usado para mostrar uma informação rápida, uma explicação, uma opção extra ou um detalhe do card.

---

## **Exemplo de uso do modal**

onPressed: () {  
  showModalBottomSheet(  
    context: context,  
    builder: (context) {  
      return Container(  
        padding: const EdgeInsets.all(20),  
        height: 200,  
        child: Column(  
          children: \[  
            const Text(  
              'Modal inferior',  
              style: TextStyle(fontSize: 22),  
            ),  
            const Text('Esse modal aparece vindo de baixo.'),  
            ElevatedButton(  
              onPressed: () {  
                Navigator.pop(context);  
              },  
              child: const Text('Fechar'),  
            ),  
          \],  
        ),  
      );  
    },  
  );  
},

---

## **Requisitos de modularização**

O código não pode ficar todo no `main.dart`.

O arquivo `main.dart` deve apenas iniciar o aplicativo.

A tela principal deve ficar em:

* pages/tela\_home.dart

As novas páginas devem ficar dentro da pasta:

* pages/

O widget personalizado deve ficar em:

* widgets/card\_icone.dart

Use `import` para conectar os arquivos.

---

## **Regras**

O projeto deve continuar usando modularização.

O widget `CardIcone` deve ser reutilizado pelo menos 4 vezes.

Os temas dos cards são de escolha livre.

Cada card deve ter informações diferentes.

Pelo menos alguns botões devem navegar para novas páginas usando `Navigator.push`.

Cada nova página criada deve ficar em um arquivo separado dentro da pasta `pages`.

Pelo menos um botão deve abrir um modal inferior usando `showModalBottomSheet`.

O modal deve ter um botão para fechar usando `Navigator.pop`.

As novas páginas devem ter botão para voltar usando `Navigator.pop`.

O código não pode ficar todo dentro do `main.dart`.

---

## **Desafio extra**

* Adicionar mais de 4 cards.  
* Personalizar as novas páginas com cores diferentes.  
* Personalizar o modal inferior.  
* Adicionar imagens, emojis ou textos extras.  
* Personalizar o botão de voltar.  
* Adicionar o nome no final de uma das páginas.  
* Usar `TextStyle` para destacar títulos e descrições.

---

# Desafio Opcional: Melhorando o Meu App de Ícones

# **Desafio Opcional: Melhorando o Meu App de Ícones**

Este desafio é uma **extensão opcional** da atividade **Meu App de Ícones**.

Ele não substitui os requisitos principais da atividade. Primeiro, você deve finalizar a atividade obrigatória com:

CardIcone  
Modularização  
Navigator.push  
Navigator.pop  
showModalBottomSheet  
Páginas separadas  
Botões funcionando

Depois disso, quem quiser poderá fazer este desafio para deixar o aplicativo mais completo.

---

## **Proposta do desafio**

Escolha **um dos cards** criados na tela inicial e melhore a página relacionada a ele.

Por exemplo:

Card de Estudos → Página de Estudos  
Card de Jogos → Página de Jogos  
Card de Filmes → Página de Filmes  
Card de Perfil → Página de Perfil  
Card de Configurações → Página de Configurações

A ideia é que essa página tenha mais informações, melhor organização visual e pelo menos um widget novo pesquisado.

---

## **O que deve ser feito**

Na página escolhida, adicione uma seção com informações extras usando o widget:

ListTile

Você deverá pesquisar o que é o widget `ListTile` e usar pelo menos **3 vezes** na página.

---

## **Widget novo: ListTile**

O `ListTile` é um widget usado para criar uma linha de informação.

Ele é muito usado em telas de menu, configurações, listas e páginas de detalhes.

Exemplo:

ListTile(  
  leading: Icon(Icons.star),  
  title: Text('Favorito'),  
  subtitle: Text('Item marcado como favorito'),  
)

Explicação:

leading: ícone ou elemento que aparece no começo da linha  
title: texto principal  
subtitle: texto menor que aparece abaixo do título

---

## **Exemplo de uso no desafio**

Se o card escolhido for **Estudos**, a página pode ter:

Ícone grande de estudo  
Título da página  
Texto explicando a área

ListTile 1: Matemática  
ListTile 2: Programação  
ListTile 3: Inglês

Se o card escolhido for **Jogos**, a página pode ter:

ListTile 1: Jogos favoritos  
ListTile 2: Plataformas  
ListTile 3: Ranking

Se o card escolhido for **Filmes**, a página pode ter:

* ListTile 1: Filmes favoritos  
* ListTile 2: Gêneros preferidos  
* ListTile 3: Filmes para assistir

---

## **Regras do desafio opcional**

O desafio deve continuar respeitando a modularização da atividade.

A página modificada deve ficar dentro da pasta:

* lib/pages/

O código não pode ser colocado todo no `main.dart`.

Você deve usar pelo menos:

3 ListTile  
1 Icon  
1 Text  
1 ElevatedButton  
1 Navigator.pop(context)

O botão de voltar deve funcionar usando:

Navigator.pop(context);

Você também deve colocar um comentário no código explicando com suas palavras o que é o `ListTile`.

* ListTile é usado para criar uma linha com ícone, título e descrição.

---

## **Parte de pesquisa**

Você deverá pesquisar sobre o widget `ListTile` e responder no próprio código, em forma de comentário:

O que o ListTile faz?  
Para que ele pode ser usado?  
Qual a diferença entre leading, title e subtitle?

---

## **Desafio extra dentro do desafio opcional**

Quem quiser deixar a página ainda melhor pode usar também o widget:

* Divider

O `Divider` cria uma linha divisória entre elementos.

Ele pode ser usado entre os `ListTile` para separar melhor as informações.

Exemplo:

ListTile(  
  leading: Icon(Icons.movie),  
  title: Text('Filmes favoritos'),  
  subtitle: Text('Lista dos filmes que mais gosto'),  
),

Divider(),

ListTile(  
  leading: Icon(Icons.star),  
  title: Text('Melhores avaliações'),  
  subtitle: Text('Filmes com maior nota'),  
),

---

## **Personalizações opcionais**

Você pode escolher algumas melhorias visuais:

Alterar a cor do AppBar  
Usar TextStyle no título  
Usar Container com borda arredondada  
Adicionar mais de 3 ListTile  
Usar Divider entre os ListTile  
Adicionar emojis nos textos  
Adicionar um modal com showModalBottomSheet  
Personalizar o botão de voltar

---

[image1]: <data:image/png;base64,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>