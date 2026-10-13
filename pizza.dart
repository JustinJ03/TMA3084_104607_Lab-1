import 'dart:io';

void main() {
  print('===============================================================');
  print('Pizza Prices: Small = 5, Medium = 7, Large = 10 USD');
  print('===============================================================');

  String size;
  while (true) {
    print('Enter your pizza size (small, medium, or large):');
    final input = stdin.readLineSync()?.trim().toLowerCase();

    if (input != null &&
        (input == 'small' || input == 'medium' || input == 'large')) {
      size = input;
      break;
    } else {
      print('Invalid size. Please enter small, medium, or large.');
    }
  }

  int quantity;
  while (true) {
    print('How many pizzas do you want to order?');
    final input = stdin.readLineSync();
    final parsedQuantity = int.tryParse(input?.trim() ?? '');

    if (parsedQuantity != null && parsedQuantity > 0) {
      quantity = parsedQuantity;
      break;
    } else {
      print('Invalid quantity. Please enter a positive integer.');
    }
  }

  int pricePerPizza;
  switch (size) {
    case 'small':
      pricePerPizza = 5;
      break;
    case 'medium':
      pricePerPizza = 7;
      break;
    case 'large':
      pricePerPizza = 10;
      break;
    default:
      pricePerPizza = 0;
  }

  final totalPayment = quantity * pricePerPizza;
  print('You ordered $quantity $size pizza${quantity == 1 ? '' : 's'}.');
  print('Total payment: $totalPayment USD');
}
