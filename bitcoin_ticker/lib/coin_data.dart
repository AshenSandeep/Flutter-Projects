import 'package:http/http.dart' as http;
import 'dart:convert';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];
const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = '8D6D7982-A51F-49CE-B8B3-7A05A32048C4';

class CoinData {
  Future<double> getCoinValue(String selectedCurrency ) async {
    Uri requestUri = Uri.parse('$coinAPIURL/BTC/$selectedCurrency?apikey=$apiKey');
    http.Response response = await http.get(requestUri);
    if (response.statusCode == 200) {
      var decordedCode = jsonDecode(response.body);
      var lastPrice = decordedCode['rate'];
      return lastPrice;
    } else {
      print(response.statusCode);
      throw 'problem with the get request';
    }
  }

  static Future<double> getValueAsCoinType(String coinType, String selectedCurrency) async
  {
    Uri requestUri = Uri.parse('$coinAPIURL/$coinType/$selectedCurrency?apikey=$apiKey');
    http.Response response = await http.get(requestUri);
    if (response.statusCode == 200) {
      var decordedCode = jsonDecode(response.body);
      var lastPrice = decordedCode['rate'];
      return lastPrice;
    } else {
      print(response.statusCode);
      throw 'problem with the get request';
    }
  }
}
