# **Atividade – App de Clima Responsivo**

## **Objetivo**

Nesta atividade, você irá desenvolver um aplicativo Flutter chamado **Clima Agora**, que exibe informações de clima de várias cidades e se adapta a diferentes tamanhos de tela.

O foco desta atividade é praticar os conceitos de **responsividade** e **organização de projetos** vistos em sala.

---

# **Cenário**

Imagine que uma empresa de meteorologia deseja criar um aplicativo simples para que os usuários possam consultar rapidamente o clima de diferentes cidades.

O aplicativo deverá funcionar bem em:

* Celulares  
* Tablets  
* Computadores (Flutter Web)

---

# **Estrutura do Projeto**

Organize seu projeto da seguinte forma:

```
lib/
  main.dart
  models/
    cidade_clima.dart
  pages/
    tela_clima.dart
  widgets/
    area_cidades.dart
    cidade_card.dart
    painel_informacoes.dart
```

---

# **O que deve aparecer na tela?**

## **1\. Banner principal**

Na parte superior da tela, crie um banner contendo:

```
☀️ Clima Agora
Confira as condições do tempo em diversas cidades.
```

Utilize:

* Container  
* AspectRatio  
* FittedBox

---

## **2\. Categorias**

Abaixo do banner, crie algumas categorias utilizando `Wrap`.

Exemplo:

```
Ensolarado
Chuvoso
Frio
Quente
Nublado
Vento Forte
```

---

## **3\. Lista de cidades**

Crie pelo menos **6 cidades**.

Cada cidade deve possuir:

* nome;  
* temperatura;  
* condição climática;  
* um ícone;  
* um botão "Ver detalhes".

Exemplo:

```
Belo Horizonte
28°C
Ensolarado
```

```
Curitiba
17°C
Chuvoso
```

```
São Paulo
22°C
Nublado
```

---

## **4\. Painel de Informações**

Crie um card lateral chamado:

```
Informações Extras
```

Dentro dele, mostre dados fictícios como:

```
Umidade: 65%
Vento: 12 km/h
Sensação térmica: 30°C
Nascer do sol: 06:10
```

---

# **Responsividade**

O aplicativo deverá mudar de comportamento conforme o tamanho da tela.

## **Celular (menor que 600\)**

```
1 coluna de cidades.
Painel de informações embaixo.
```

---

## **Tablet (entre 600 e 899\)**

```
2 colunas de cidades.
Painel de informações embaixo.
```

---

## **Desktop/Web (900 ou mais)**

```
3 colunas de cidades.
Painel de informações ao lado da lista de cidades.
```

---

# **Regras Extras**

### **Regra 1**

No celular, exiba apenas as primeiras **4 cidades**.

No tablet e no desktop, exiba todas as cidades.

---

### **Regra 2**

Exiba na tela:

```
Largura atual: XXX px
Dispositivo: Celular/Tablet/Desktop
```

---

### **Regra 3**

No desktop, exiba uma mensagem extra:

```
🌎 Dados climáticos atualizados em tempo real.
```

---

### **Regra 4**

No tablet, exiba um botão:

```
Ver previsão para 7 dias
```

Esse botão deve aparecer **somente** no tablet.

---

# **Conceitos obrigatórios**

Seu projeto deve utilizar:

* MediaQuery;  
* LayoutBuilder;  
* GridView.builder;  
* Wrap;  
* AspectRatio;  
* FittedBox;  
* Expanded;  
* SingleChildScrollView;  
* Modularização (models, pages e widgets).

---

# **Desafios Extras**

Escolha pelo menos **2**:

### **Desafio 1**

Adicionar mais 4 cidades.

---

### **Desafio 2**

Adicionar imagens das cidades utilizando:

```
Image.network()
```

---

### **Desafio 3**

No desktop, mostrar 4 colunas em vez de 3\.

---

### **Desafio 4**

Adicionar uma nova categoria:

```
Tempestade
```

---

### **Desafio 5**

Criar um card chamado:

```
Cidade em destaque
```

que aparece apenas no celular.

---

## **Entrega**

Enviar:

* Link do GitHub;  
* Print do aplicativo no celular;  
* Print do aplicativo no tablet;  
* Print do aplicativo no desktop/web.

---

**Dica:** Antes de começar a programar, pense em:

1. Quais dados pertencem ao `model`?  
2. Quais partes da tela podem virar `widgets`?  
3. O que muda em cada tamanho de tela?  
4. O que permanece igual independentemente do dispositivo?

