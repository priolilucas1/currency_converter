import 'package:flutter/material.dart';

import 'package:conversor_moedas/src/controllers/home_controller.dart';
import 'package:conversor_moedas/src/components/currency_box.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late HomeController homeController;

  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();

  @override
  void initState() {
    super.initState();
    homeController = HomeController(toText, fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 150,
            right: 30,
            bottom: 20,
            left: 30,
          ),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 200,
                  height: 200,
                ),
                SizedBox(
                  height: 40,
                ),
                CurrencyBox(
                  items: homeController.currencies,
                  controller: toText,
                  selectedItem: homeController.toCurrency,
                  onChanged: (model) {
                    setState(() {
                      homeController.toCurrency = model;
                    });
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                CurrencyBox(
                  items: homeController.currencies,
                  controller: fromText,
                  selectedItem: homeController.fromCurrency,
                  onChanged: (model) {
                    setState(() {
                      homeController.fromCurrency = model;
                    });
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      homeController.convert();
                    },
                    child: Text(
                      'Converter',
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      shape: StadiumBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
