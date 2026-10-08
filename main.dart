import 'dart:io';

void main() {
  print('=== Pizza Order Calculator ===');
  print('Small = 5 USD');
  print('Medium = 7 USD');
  print('Large = 10 USD');

  String continueOrder = 'yes';

  while (continueOrder.toLowerCase() == 'yes') {
    print('\nPlease enter your pizza size (small, medium, or large):');
    String pizzaSize = stdin.readLineSync()!.toLowerCase();

    double price = 0;

    switch (pizzaSize) {
      case 'small':
        price = 5;
        break;

      case 'medium':
        price = 7;
        break;

      case 'large':
        price = 10;
        break;

      default:
        print('Invalid pizza size. Please try again.');
        continue;
    }

    print('How many pizzas do you want?');
    int quantity = int.parse(stdin.readLineSync()!);

    double totalPayment = price * quantity;

    print('Your Total Payment is: \$${totalPayment.toInt()} USD');

    print('\nDo you want to order again? (yes/no):');
    continueOrder = stdin.readLineSync()!;
  }

  print('\nThank you for your order!');
}