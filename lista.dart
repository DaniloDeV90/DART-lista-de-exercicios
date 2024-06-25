void main() {
  int escolha = 5; 
  executarExercicio(escolha);
}

void executarExercicio(int escolha) {
  switch (escolha) {
    case 1:
   
      double fahrenheit = 68;
      double celsius = (fahrenheit - 32) * 5 / 9;
      print('$fahrenheit°F é igual a ${celsius.toStringAsFixed(2)}°C');
      
      celsius = 20;
      fahrenheit = (celsius * 9 / 5) + 32;
      print('$celsius°C é igual a ${fahrenheit.toStringAsFixed(2)}°F');
      break;

    case 2:
   
      List<double> notas = [7.5, 9.0, 6.8, 8.2];
      double soma = notas.reduce((a, b) => a + b);
      double media = soma / notas.length;
      print('Notas: $notas');
      print('Média: ${media.toStringAsFixed(2)}');
      if (media >= 6.0) {
        print('Aluno aprovado.');
      } else {
        print('Aluno reprovado.');
      }
      break;

    case 3:

      int numero = 29;
      bool isPrime = true;
      List<int> divisores = [];
      for (int i = 2; i <= numero / 2; i++) {
        if (numero % i == 0) {
          isPrime = false;
          divisores.add(i);
        }
      }
      if (isPrime) {
        print('$numero é um número primo.');
      } else {
        print('$numero não é um número primo. Divisores: $divisores');
      }
      break;

    case 4:
  
      int n = 10;
      List<int> fibonacci = [0, 1];
      for (int i = 2; i < n; i++) {
        fibonacci.add(fibonacci[i - 1] + fibonacci[i - 2]);
      }
      print('Sequência de Fibonacci até o $n-ésimo termo: $fibonacci');
      break;

    case 5:

      double precoInicial = 120.00;
      double percentualDesconto = 15;
      double desconto = (percentualDesconto / 100) * precoInicial;
      double precoFinal = precoInicial - desconto;
      print('Preço inicial: R\$ ${precoInicial.toStringAsFixed(2)}');
      print('Desconto: ${percentualDesconto}%');
      print('Preço final: R\$ ${precoFinal.toStringAsFixed(2)}');
      break;

    default:
      print('Escolha inválida. Por favor, escolha um número entre 1 e 5.');
      break;
  }
}
