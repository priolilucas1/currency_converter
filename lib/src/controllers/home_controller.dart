import 'package:flutter/material.dart';

import 'package:conversor_moedas/src/models/currency_model.dart';

class HomeController {
  late List<CurrencyModel> currencies;

  final TextEditingController toText;
  final TextEditingController fromText;

  late CurrencyModel toCurrency;
  late CurrencyModel fromCurrency;

  HomeController(this.toText, this.fromText) {
    currencies = CurrencyModel.getCurrencies();
    toCurrency = currencies[0];
    fromCurrency = currencies[1];
  }

  void convert() {
    String text = toText.text;
    double value = double.tryParse(text.replaceAll(',', '.')) ?? 1.0;
    double returnValue = 0;

    switch (fromCurrency.name) {
      case 'Real':
        returnValue = value * toCurrency.real;
        break;
      case 'Dólar':
        returnValue = value * toCurrency.dolar;
        break;
      case 'Euro':
        returnValue = value * toCurrency.euro;
        break;
      case 'Bitcoin':
        returnValue = value * toCurrency.bitcoin;
        break;
      default:
        return;
    }

    fromText.text = returnValue.toString();
  }
}
