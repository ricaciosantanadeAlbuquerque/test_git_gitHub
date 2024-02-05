import 'dart:io';

void main() {
  opcao(op: menu());
}

int menu() {
  var retorno = 0;
  print('Digite [1] para somar');
  print('Digite [2] para subtrair');
  print('Digite [3] para Multiplicar');
  print('Digite [4] para dividir');
  print('Digite [5] para sair\n');
  String? entradaOp = stdin.readLineSync();

  if (entradaOp != null && entradaOp.isNotEmpty) {
    try {
      int convert = int.tryParse(entradaOp) ?? 0;
      retorno = convert;
    } catch (e) {
      throw Exception('ERRO! $entradaOp não é um valor numérico!!');
    }
    ;
  }
  return retorno;
}

//=========================================================================================================

void opcao({required int op}) {
  switch (op) {
    case 1:
      print('Digite o primeiro valor');
      String? entradaValor1 = stdin.readLineSync();
      print('Digite o segundo Valor');
      String? entradaValor2 = stdin.readLineSync();

      if (entradaValor1 != null && entradaValor2 != null) {
        if (entradaValor1.isNotEmpty && entradaValor2.isNotEmpty) {
          try {
            num num1 = num.tryParse(entradaValor1) ?? 0;
            num num2 = num.tryParse(entradaValor2) ?? 0;

            soma(valor1: num1, valor2: num2);
          } catch (e) {
            throw Exception('Erro ! não é possível Fazer a converção já que esteve valor não é um número');
          }
        } else {
          print('ERRO! Valor vazio !!! Nada foi Digitado.');
        }
      }

      break;
    case 2:
      print('Digite o primeiro valor');
      String? entradaValor1 = stdin.readLineSync();
      print('Digite o segundo Valor');
      String? entradaValor2 = stdin.readLineSync();

      if (entradaValor1 != null && entradaValor2 != null) {
        if (entradaValor1.isNotEmpty && entradaValor2.isNotEmpty) {
          try {
            num num1 = num.tryParse(entradaValor1) ?? 0;
            num num2 = num.tryParse(entradaValor2) ?? 0;

            subtracao(valor1: num1, valor2: num2);
          } catch (e) {
            throw Exception('Erro ! não é possível Fazer a converção já que esteve valor não é um número');
          }
        } else {
          print('ERRO! Valor vazio !!! Nada foi Digitado.');
        }
      }
      break;
    case 3:
      print('Digite o primeiro valor');
      String? entradaValor1 = stdin.readLineSync();
      print('Digite o segundo Valor');
      String? entradaValor2 = stdin.readLineSync();

      if (entradaValor1 != null && entradaValor2 != null) {
        if (entradaValor1.isNotEmpty && entradaValor2.isNotEmpty) {
          try {
            num num1 = num.tryParse(entradaValor1) ?? 0;
            num num2 = num.tryParse(entradaValor2) ?? 0;
            multiplicacao(valor1: num1, valor2: num2);
          } catch (e) {
            throw Exception('Erro ! não é possível Fazer a converção já que esteve valor não é um número');
          }
        } else {
          print('ERRO! Valor vazio !!! Nada foi Digitado.');
        }
      }
      break;
    case 4:
      print('Digite o primeiro valor');
      String? entradaValor1 = stdin.readLineSync();
      print('Digite o segundo Valor');
      String? entradaValor2 = stdin.readLineSync();

      if (entradaValor1 != null && entradaValor2 != null) {
        if (entradaValor1.isNotEmpty && entradaValor2.isNotEmpty) {
          try {
            num num1 = num.tryParse(entradaValor1) ?? 0;
            num num2 = num.tryParse(entradaValor2) ?? 0;
          } catch (e) {
            throw Exception('Erro ! não é possível Fazer a converção já que esteve valor não é um número');
          }
        } else {
          print('ERRO! Valor vazio !!! Nada foi Digitado.');
        }
      }
      break;
    case 5:
      print('Fechando programa');
      exit(0);
    default:
      print('valor fora da faixa, encerrando o Programa ');
      exit(0);
  }
}

// =========================================================================================================

void soma({required num valor1, required num valor2}) {
  print('O resultado da Soma é ${valor1 + valor2}');
}

// =========================================================================================================

void subtracao({required num valor1, required num valor2}) {
  print('O resultado da subtração é ${valor1 - valor2}');
}

// =========================================================================================================

void multiplicacao({required num valor1, required num valor2}) {
  print('O resultado da Multiplicação é ${valor1 * valor2}');
}

// =========================================================================================================
