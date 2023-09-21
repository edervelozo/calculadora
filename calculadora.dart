import 'dart:io';

// Função para realizar cálculos
double calcular(double primeiroNumero, double segundoNumero, String operacao) {
  if (operacao == '+') {
    return primeiroNumero + segundoNumero;
  } else if (operacao == '-') {
    return primeiroNumero - segundoNumero;
  } else if (operacao == '*') {
    return primeiroNumero * segundoNumero;
  } else if (operacao == '/') {
    if (segundoNumero != 0) {
      return primeiroNumero / segundoNumero;
    } else {
      print("Erro: Divisão por zero não é permitida.");
      return double.nan; // Retornar NaN (Not-a-Number) em caso de erro
    }
  } else {
    print("Operação inválida.");
    return double.nan; // Retornar NaN (Not-a-Number) em caso de operação inválida
  }
}

void main() {
  double primeiroNumero, segundoNumero;
  String operacao;

  // Solicita ao usuário o primeiro número
  stdout.write("Digite o primeiro número: ");
  primeiroNumero = double.parse(stdin.readLineSync()!);

  // Solicita ao usuário a operação
  stdout.write("Digite a operação (+, -, *, /): ");
  operacao = stdin.readLineSync()!;

  // Solicita ao usuário o segundo número
  stdout.write("Digite o segundo número: ");
  segundoNumero = double.parse(stdin.readLineSync()!);

  // Chama a função para realizar o cálculo
  double resultado = calcular(primeiroNumero, segundoNumero, operacao);

  // Verifica se o resultado não é NaN antes de imprimir
  if (!resultado.isNaN) {
    print("O resultado da operação é: $resultado");
  }
}
