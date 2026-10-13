import 'dart:io';

void main(){
  print("===============================================================");
  print('Pizza Price: "Small: 5 USD, Medium: 7 USD, Large: 10 USD"');
  print("===============================================================");
  print("please enter your pizza size (small, medium, or large): ");

  var size;
  int quantity;
  Map prices = {
    "small": 5,
    "medium": 7,
    "large": 10
  };

  while(true){
    size = stdin.readLineSync()!;
    if(size == "small" || size == "medium" || size == "large"){
      break;
    }else{
      print("Invalid size. Please enter small, medium, or large.");
    }
  }

  print("how many pizzas do you want to order?");

  while(true){
    final input = stdin.readLineSync();
    final parsedQuantity = int.tryParse(input ?? '');
    if(parsedQuantity != null && parsedQuantity > 1){
      quantity = parsedQuantity;
      break;
    }else{
      print("Invalid quantity. Please enter an integer greater than 1.");
    }
  }

  print("You have ordered ${quantity} ${size} pizzas.");
  print("your total price is: ${quantity * prices[size]!} USD");


  


}