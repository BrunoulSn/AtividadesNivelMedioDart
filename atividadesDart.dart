import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  Random randomNumber = Random();

//Crie uma lista com 10 números inteiros e use um for para exibir cada número no terminal.

List<int> numeros = [1,2,3,4,5,6,7,8,9,10];

for (int i = 0; i < numeros.length; i++) 
   print(numeros[i]);

print("Acima 10 numeros presente na lista: ");
///////////////////////

// Percorra uma lista de 10 números inteiros e exiba apenas os números pares.
for (int i = 0; i < numeros.length; i++) 
  if (numeros[i] % 2 == 0) 
    print(numeros[i]);
print("Acima apenas números pares da lista");
   ///////////////////////
    
// Some todos os números de uma lista usando um for e exiba o resultado.
numeros.add(0);
for (var i = 0; i < numeros.length-1; i++) 
  numeros.last += numeros[i];
print("Resultado da soma dos numeros da lista: ${numeros.last}");

///////////////////////////

// Use um while para percorrer uma lista e exibir seus elementos um por um.
int iLoop = 0;
while (numeros.length > 0) {
  print(numeros[0]);
  numeros.removeAt(0);

}
print("Acima os números da lista percorridos um por um");


///////////////////////////


// Use um do while para percorrer uma lista de 5 nomes e exibi-los no terminal.
iLoop=0;
List<String> nomes = ["João", "Maria", "José", "Ana", "Carlos"]; 
do {
  print(nomes[iLoop]);
  iLoop++;
} while (iLoop < nomes.length);
///////////////////////////


// Ordene uma lista de números aleatórios em ordem crescente e exiba no terminal.
for (int i = 0; i < 10; i++) 
  numeros.add(randomNumber.nextInt(100));

numeros.sort((a,b) => a.compareTo(b));
print("Organizando números alatórios em ordem crescente: $numeros");


// Multiplique todos os números de uma lista por 2 e exiba a nova lista.
print("Segue os números multiplicados por 2: ");
for (int i = 0; i < numeros.length; i++) 
  print(numeros[i] *= 2);

///////////////////////////

// Verifique se um determinado número existe em uma lista, usando um while.
print("Informe um número de 0-100 para verificar se existe na lista: ");
int targetNumber = int.parse(stdin.readLineSync()!);

while (!numeros.contains(targetNumber)) {
  print("Número não esta na lista, digite outro: ");
 targetNumber = int.parse(stdin.readLineSync()!);
}
print("BOOOOOOA! O número $targetNumber existe na lista");

///////////////////////////

// Remova todos os elementos de uma lista usando um do while.
do {
  numeros.removeAt(0);
} while (numeros.length > 0);

///////////////////////////

// Peça ao usuário 5 números e adicione-os a uma lista, depois exiba os números digitados.
for (int i = 0; i < 5; i++) {
  print("Informe o $i° número: ");
  numeros.add(int.parse(stdin.readLineSync()!));
}
print("Os números informados foram: $numeros");

///////////////////////////

// Crie um Map com nomes de produtos como chave e preços como valor. Use um for para exibir os produtos e seus preços.
print("Segue os prdoutos e seus preços: ");
Map<String, double> produtos = {
  "Arroz": 20.0,
  "Feijão": 12.0,
  "Macarrão": 7.0,
  "Carne": 50.0,
  "Frango": 35.0
};

for (var item in produtos.entries) 
  print("Produto: ${item.key} - Preço: ${item.value}");

///////////////////////////

// Percorra um Map com nomes e idades e exiba apenas os maiores de idade.

print("Segue as pessoas cadastradas maiores de 17 anos: ");
Map<String, int> pessoas = {};

pessoas["Brunão"] = randomNumber.nextInt(80);
pessoas["Marta"] = randomNumber.nextInt(80);
pessoas["Serjão"] = randomNumber.nextInt(80);
pessoas["Pelé"] = randomNumber.nextInt(80);
pessoas["Ronaldinho"] = randomNumber.nextInt(80);
pessoas["McQuen"] = randomNumber.nextInt(80);
pessoas["Aspas"] = randomNumber.nextInt(80);

for (var element in pessoas.entries) 
  if (element.value >= 18) 
    print("Nome: ${element.key} - Idade: ${element.value}");

///////////////////////////

// Some todos os valores de um Map onde as chaves são produtos e os valores são preços
print("Segue a soma dos preços dos produtos: ");
double result=0;
for (var element in produtos.entries) 
  result+=element.value;
print(result);

///////////////////////////

// Crie um Map de alunos e notas e exiba apenas os alunos com nota acima de 7.
print("Segue os aprovados 2025");
pessoas["Brunão"] = 10;
pessoas["Marta"] = randomNumber.nextInt(10);
pessoas["Serjão"] = randomNumber.nextInt(10);
pessoas["Pelé"] = randomNumber.nextInt(10);
pessoas["Ronaldinho"] = randomNumber.nextInt(10);
pessoas["McQuen"] = randomNumber.nextInt(10);
pessoas["Aspas"] = randomNumber.nextInt(10);

for (var element in pessoas.entries) 
  if (element.value > 7) 
    print("Nome: ${element.key} - Nota: ${element.value}");
  
///////////////////////////

// Encontre um nome específico dentro de um Map e exiba sua informação.
bool found = false;
do {

print("Informe um nome para verificar se existe no Map: ");
String targetName = stdin.readLineSync()!;

for (var element in pessoas.entries)
  if (element.key == targetName) {
    print("Nome: ${element.key} está na lista! ");
    found = true;
    }
if (found == false)
print("Errou!!!!!!");

    } while (found == false);
///////////////////////////

// Multiplique todos os valores numéricos de um Map por 2 e exiba o novo Map.
produtos.updateAll((key, imposto) => imposto * 2);
print("Segue os produtos com os impostos: $produtos");
///////////////////////////

// Remova todos os itens de um Map usando um do while.
do {
  produtos.remove(produtos.keys.first);
} while (produtos.length > 0);
///////////////////////////

// Crie um Map onde as chaves são cidades e os valores são suas populações. Exiba as cidades com mais de 100.000 habitantes.
print("Segue cidades com mais de 100.000 de habitantes");
Map<String, int> cidades = {};
  cidades["São Paulo"] = randomNumber.nextInt(1000000)+500000;
  cidades["Blumenau"] = randomNumber.nextInt(1000000)+50000;
  cidades["Belo Hozionte"] = randomNumber.nextInt(100000)+50000;
  cidades["Niteroi"] = randomNumber.nextInt(1000000)+50000;
  cidades["Florianópolis"] = randomNumber.nextInt(1000000)+50000;
  cidades["Gaspar"] = randomNumber.nextInt(100000+50000);
///////////////////////////
for (var element in cidades.entries) 
  if (element.value > 100000) 
    print("Cidade: ${element.key} - População: ${element.value}");

// Conte quantos elementos existem em um Map sem usar .length.
iLoop = 0;
for(var element in cidades.entries) 
  iLoop++;
    print("Tem $iLoop elementos no Map, não usei length hein");
///////////////////////////

// Inverta as chaves e valores de um Map e exiba o novo Map.
Map<int, String> newCidades = {};
newCidades = cidades.map((key, value) => MapEntry(value, key));
print(newCidades);

// Crie um Set com 5 números inteiros e use um for para exibir os números.
Set<int> numerosSet = {};

while (numerosSet.length < 5) 
  numerosSet.add(randomNumber.nextInt(10));

for (int i = 0; i < 5; i++)
  print(numerosSet.elementAt(i));
///////////////////////////

// Verifique se um número específico existe em um Set, usando um while.
print("Informe um número para verificar se existe no Set: ");
targetNumber = int.parse(stdin.readLineSync()!);

iLoop = 0;
while (iLoop < numerosSet.length) 
  if (numerosSet.contains(targetNumber)) {
    print("O número $targetNumber existe no Set");
    break;
  }
  else
  print("O número $targetNumber não existe no Set");
  iLoop++;

///////////////////////////

// Remova todos os elementos de um Set usando um do while.
do {
  numerosSet.remove(numerosSet.first);
} while (numerosSet.length > 0);

///////////////////////////

// Crie dois Set de números e exiba a interseção entre eles usando um for.
Set<int> intersecaoSet = {};
Set<int> intersecaoSet2 = {};

intersecaoSet2.add(randomNumber.nextInt(10)); intersecaoSet2.add(randomNumber.nextInt(10)); intersecaoSet2.add(randomNumber.nextInt(10));
intersecaoSet2.add(randomNumber.nextInt(10));intersecaoSet2.add(randomNumber.nextInt(10));intersecaoSet2.add(randomNumber.nextInt(10));
intersecaoSet.add(randomNumber.nextInt(10));intersecaoSet.add(randomNumber.nextInt(10));intersecaoSet.add(randomNumber.nextInt(10));
intersecaoSet.add(randomNumber.nextInt(10));intersecaoSet.add(randomNumber.nextInt(10));intersecaoSet.add(randomNumber.nextInt(10));

for (var element in intersecaoSet) 
  if (intersecaoSet2.contains(element)) 
    print("Interseção: $element"); 


// Some todos os valores dentro de um Set usando um while.
iLoop = 0;
result = 0;
while (intersecaoSet.length > iLoop) {
  result += intersecaoSet.elementAt(iLoop);
  iLoop++;
}
print("A soma de todas os valores do Set é: $result");
///////////////////////////

// Multiplique todos os valores de um Set por 3 e exiba o novo conjunto.
intersecaoSet2.forEach((element) => print(element * 3)); 
///////////////////////////


// Conte quantos elementos existem em um Set sem usar .length.
for (var element in intersecaoSet) 
  iLoop++;
  print("Tem $iLoop elementos no Set");

///////////////////////////

// Crie um Set de palavras e remova uma palavra específica usando um do while.

Set<String> animais = {"Cachorro", "Gato", "Urso", "Tigre", "Leão","Lobo","Onça"};
String animalEscolhido = animais.elementAt(randomNumber.nextInt(animais.length));

print("Escolhi um dos animais, remova o da lista para ganhar: Você tem 3 tentativas");

for ( iLoop = 0; iLoop < 3; iLoop++) {
  print("Informe um animal para remover do Set: ");
  String animal = stdin.readLineSync()!;

  if (animais.contains(animal)) 
    animais.remove(animal);
else
print("Vishhh animal não está na lista... Perdeu uma chance");
    if (animal == animalEscolhido) {
      print("Parabéns você acertou! O animal foi removido da lista");
      break;
      }
    else 
    print("Você errou! Tente novamente");
  
}
if(iLoop >=3)
print("Você perdeu! O animal era: $animalEscolhido");
else
print("Você ganhou! O animal era: $animalEscolhido");

///////////////////////////

// Converta um Set em uma List e ordene os valores.
List<String> animaisList = animais.toList();
animaisList.sort((a,b)=> a.compareTo(b));
print(animaisList);
///////////////////////////

// Verifique quais elementos de um Set pertencem a uma determinada lista.
for (var i = 0; i < 2; i++) 
animaisList.remove(randomNumber.nextInt(animaisList.length));

for (var element in animaisList) 
  if (animais.contains(element)) 
    print("O animal $element pertence a lista");
}