import 'package:conversor_moedas/src/controllers/home_controller.dart';
import 'package:conversor_moedas/src/models/currency_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();
  final homeController = HomeController(toText, fromText);

  test(
    'Deve converter de Real para Dólar',
    () {
      toText.text = '1.0';
      homeController.convert();
      expect(fromText.text, '0.2');
    },
  );
  test(
    'Deve converter de Dólar para Real',
    () {
      toText.text = '1.0';
      homeController.toCurrency =
          CurrencyModel('Dólar', 5.08, 1.0, 0.82, 0.000026);
      homeController.fromCurrency =
          CurrencyModel('Real', 1.0, 0.20, 0.16, 0.000052);
      homeController.convert();
      expect(fromText.text, '5.08');
    },
  );
}
