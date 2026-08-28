# **Atividade \- App de Humor Animado**

## **Descrição**

Crie um novo aplicativo Flutter chamado **Mood App**.

A ideia do app é permitir que o usuário escolha um humor e veja a tela mudar com animação.

O aplicativo deve usar animações para deixar a experiência mais visual e interativa.

---

## **Tela inicial**

A tela inicial deve ter:

* nome do app;  
* uma frase explicando a proposta;  
* pelo menos 3 botões de humor.

Exemplos de humor:

```
Feliz
Triste
Animado
Calmo
Bravo
Surpreso
```

Quando o usuário clicar em um humor, a tela deve mudar com animação.

---

## **Animação obrigatória**

Use `AnimatedContainer` para alterar o visual da tela.

Ao escolher um humor, o container principal deve mudar pelo menos 3 coisas:

```
cor
tamanho
ícone
texto
arredondamento da borda
```

Exemplo:

```
Humor Feliz:
cor amarela
ícone de sorriso
texto: Hoje estou feliz!

Humor Calmo:
cor azul
ícone de nuvem
texto: Momento de tranquilidade.

Humor Animado:
cor laranja
ícone de raio
texto: Energia total!
```

---

## **Mensagem animada**

Use `AnimatedOpacity` para mostrar uma mensagem extra sobre o humor escolhido.

A mensagem deve aparecer suavemente depois que o usuário escolher uma opção.

Exemplo:

```
Você escolheu o humor Feliz.
Que bom ver essa energia positiva!
```

---

## **Regras obrigatórias**

O app precisa ter:

```
um novo projeto Flutter
uma tela principal
StatefulWidget
setState
AnimatedContainer
AnimatedOpacity
pelo menos 3 opções de humor
mudança visual ao clicar nos botões
sem erro de overflow
```

## **Entrega**

Enviar o projeto pelo GitHub.

O repositório deve conter o app funcionando e organizado.

Sim. Um desafio mais legal seria transformar o humor escolhido em uma **cena animada**, em vez de apenas sortear uma opção.

# 

# 

# 

# 

# 

# **Desafio — Transforme o humor em uma cena**

Agora que o **Mood App** já altera cor, tamanho, ícone, texto e mensagem, crie um **Modo Cena** para cada humor.

Ao clicar em um humor, além das animações já existentes, devem aparecer elementos que combinem com a opção escolhida.

* Exemplos:  
* **Feliz**  
  Mostrar um sol e pequenos ícones de brilho.  
* **Calmo**  
  Mostrar nuvens ou gotas se movimentando lentamente.  
* **Animado**  
  Mostrar raios, estrelas ou ícones de energia.  
* **Triste**  
  Mostrar gotas de chuva ou uma nuvem.

## **O que deve acontecer**

A cena deve aparecer suavemente depois que o humor for escolhido.

Ela precisa:

* combinar com o humor selecionado;  
* usar pelo menos uma animação;  
* aparecer e desaparecer ao trocar de humor;  
* ter movimento ou mudança visual;  
* não causar overflow.

## **Animações que podem ser usadas**

`AnimatedOpacity` para mostrar a cena.

`AnimatedContainer` para mudar tamanho, cor ou posição.

`TweenAnimationBuilder` para movimentar ou aumentar os elementos.