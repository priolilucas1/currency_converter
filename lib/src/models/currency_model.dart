class CurrencyModel {
  CurrencyModel(this.name, this.real, this.dolar, this.euro, this.bitcoin);

  final String name;
  final double real;
  final double euro;
  final double dolar;
  final double bitcoin;

  static List<CurrencyModel> getCurrencies() {
    return <CurrencyModel>[
      CurrencyModel('Real', 1.0, 0.20, 0.16, 0.000052),
      CurrencyModel('Dólar', 5.08, 1.0, 0.82, 0.000026),
      CurrencyModel('Euro', 6.20, 1.22, 1.0, 0.000032),
      CurrencyModel('Bitcoin', 193.126, 38.022, 31.136, 1.0),
    ];
  }
}
