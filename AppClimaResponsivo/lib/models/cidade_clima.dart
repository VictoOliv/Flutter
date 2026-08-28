import 'package:flutter/material.dart';

class CidadeClima {
  final String nome;
  final int temperatura;
  final String condicao;
  final IconData icone;

  const CidadeClima({
    required this.nome,
    required this.temperatura,
    required this.condicao,
    required this.icone,
  });
}

const List<CidadeClima> cidades = [
  CidadeClima(
    nome: 'Belo Horizonte',
    temperatura: 28,
    condicao: 'Ensolarado',
    icone: Icons.wb_sunny,
  ),
  CidadeClima(
    nome: 'Curitiba',
    temperatura: 17,
    condicao: 'Chuvoso',
    icone: Icons.umbrella,
  ),
  CidadeClima(
    nome: 'São Paulo',
    temperatura: 22,
    condicao: 'Nublado',
    icone: Icons.cloud,
  ),
  CidadeClima(
    nome: 'Rio de Janeiro',
    temperatura: 32,
    condicao: 'Quente',
    icone: Icons.wb_sunny_outlined,
  ),
  CidadeClima(
    nome: 'Porto Alegre',
    temperatura: 15,
    condicao: 'Frio',
    icone: Icons.ac_unit,
  ),
  CidadeClima(
    nome: 'Fortaleza',
    temperatura: 30,
    condicao: 'Vento Forte',
    icone: Icons.air,
  ),
];

const List<String> categorias = [
  'Ensolarado',
  'Chuvoso',
  'Frio',
  'Quente',
  'Nublado',
  'Vento Forte',
];
