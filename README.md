# Pizza Order Calculator

A simple Dart program for calculating the total price of a pizza order based on size and quantity.

## Project Overview

This repository contains a single console application that:
- prompts the user to choose a pizza size (`small`, `medium`, or `large`)
- asks for the number of pizzas
- validates the inputs
- calculates and prints the total price

## Files

- `pizza.dart` - Main program logic

## Requirements

- Dart SDK installed on your machine

## Run the Program

From the project root, run:

```bash
dart run pizza.dart
```

## Example

```text
===============================================================
Pizza Price: "Small: 5 USD, Medium: 7 USD, Large: 10 USD"
===============================================================
please enter your pizza size (small, medium, or large): 
small
how many pizzas do you want to order?
3
You have ordered 3 small pizzas.
your total price is: 15 USD
```

## Notes

- The program rejects invalid pizza sizes.
- The program requires the quantity to be an integer greater than 1.
- Prices are fixed as:
  - Small: 5 USD
  - Medium: 7 USD
  - Large: 10 USD
