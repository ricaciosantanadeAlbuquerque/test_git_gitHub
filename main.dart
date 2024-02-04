import 'dart:io';

void main() {
  print('\n${menu()}');
}

int menu() {
  var retorno = 0;
  print('Digite [1] para somar');
  print('Digite [2] para subtrair');
  print('Digite [3] para Multiplicar');
  print('Digite [4] para dividir');
  print('Digite [5] para sair');
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

void opcao({required int op}) {
  switch (op) {
    case 1:
      print('Digite o primeiro valor');
      String? entradaValor1 = stdin.readLineSync();
      print('Digite o segundo Valor');
      String? entradaValor2 = stdin.readLineSync();
      
      break;
    case 2:
      break;
    case 3:
      break;
    case 4:
      break;
    case 5:
      break;
  }
}
