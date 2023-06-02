import 'package:flutter/material.dart';

/*
A classe Usuario possui os campos obrigatórios (nome, e-mail e CPF)
e os campos opcionais (data de nascimento e profissão).
O construtor da classe aceita os campos obrigatórios como argumentos posicionais
e os campos opcionais como argumentos nomeados.
A classe também possui um método toMap() que retorna um mapa com todos os campos do usuário.

No método main(), um mapa chamado usuarios é criado para armazenar os registros de usuários.
Alguns usuários são criados como exemplos e adicionados ao mapa usando IDs como chaves.

Por fim, o código mostra como acessar os campos de um usuário específico usando o ID como chave no mapa usuarios.
Os valores dos campos são impressos no console.
 */

class Usuario {
  String nome;
  String email;
  String cpf;
  DateTime? dataNascimento;
  String? profissao;

  Usuario(this.nome, this.email, this.cpf, {this.dataNascimento, this.profissao});

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'email': email,
      'cpf': cpf,
      'dataNascimento': dataNascimento,
      'profissao': profissao,
    };
  }
}

void main() {
  Map<int, Usuario> usuarios = {};

  // Criação de alguns usuários para exemplo
  Usuario usuario1 = Usuario('João', 'joao@example.com', '12345678901', dataNascimento: DateTime(1990, 10, 15), profissao: 'Engenheiro');
  Usuario usuario2 = Usuario('Maria', 'maria@example.com', '98765432109', profissao: 'Advogada');

  // Adiciona os usuários ao mapa
  usuarios[1] = usuario1;
  usuarios[2] = usuario2;

  // Acessa um usuário pelo ID
  Usuario usuario = usuarios[1]!;
  print('Nome: ${usuario.nome}');
  print('E-mail: ${usuario.email}');
  print('CPF: ${usuario.cpf}');
  print('Data de Nascimento: ${usuario.dataNascimento}');
  print('Profissão: ${usuario.profissao}');
}