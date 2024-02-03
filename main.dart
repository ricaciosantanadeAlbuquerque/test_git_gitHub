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
