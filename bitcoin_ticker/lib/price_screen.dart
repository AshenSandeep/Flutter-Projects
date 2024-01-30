import 'package:flutter/material.dart';
import 'coin_data.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  CoinData coinModel = CoinData();
  double rate = 0;
  String selectedCurrency = 'USD';
  DropdownButton<String> androidDropdown() {
    List<DropdownMenuItem<String>> dropdownItems = [];
    for (String currency in currenciesList) {
      var newItem = DropdownMenuItem(
        child: Text(currency),
        value: currency,
      );

      dropdownItems.add(newItem);
    }

    return DropdownButton<String>(
        value: selectedCurrency,
        items: dropdownItems,
        onChanged: (value) async {
          selectedCurrency = value!;
          await getCoinData();
          setState(() {
          });
        });
  }

  CupertinoPicker iosPicker() {
    List<Text> pickerItems = [];
    for (String currency in currenciesList) {
      pickerItems.add(Text(currency));
    }
    return CupertinoPicker(
      backgroundColor: Colors.lightBlue,
      itemExtent: 32.0,
      onSelectedItemChanged: (selectedIndex) async {
        print(selectedIndex);
        await getCoinData();
      },
      children: pickerItems,
    );
  }

  Widget getPicker() {
    //check the device android/ios- then change the dropDowMenu
    if (Platform.isIOS) {
      return iosPicker();
    } else if (Platform.isAndroid) {
      return androidDropdown();
    } else {
      return androidDropdown();
    }
  }

  String currency = '?';
  String coinValue = '?';
  Future<void> getCoinData() async {
    try {
      double coinData = await CoinData().getCoinValue(selectedCurrency);

      coinValue = coinData.toStringAsFixed(0);
      setState(() {});
    } on Exception catch (e) {
      print(e);
    }
  }

  Future<String> getCoinDataR() async {
    double coinData = await CoinData().getCoinValue(selectedCurrency);
    return coinData.toStringAsFixed(0);
  }

  Widget exchangerCart(String cryptoType) {

    String value = '';

    Future<String> getData() async
    {
      try{
        value = (await CoinData.getValueAsCoinType(cryptoType, selectedCurrency)).toStringAsFixed(2);
        return 'Done';
      }
      catch(e)
      {
        rethrow;
      }
    }

    return FutureBuilder(
      future: getData(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if(snapshot.hasData)
          {
            return Padding(
              padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
              child: Card(
                color: Colors.lightBlueAccent,
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                  child: Text(
                    '1 $cryptoType = $value $selectedCurrency',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            );
          }
        else if(snapshot.hasError)
          {
            return Text('Error fetching data',);
          }
        else return Text('Loading');
      },

    );
  }

  @override
  void initState() {
    super.initState();
    getCoinData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          exchangerCart('BTC'),
          exchangerCart('ETH'),
          exchangerCart('LTC'),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: getPicker(),
          ),
        ],
      ),
    );
  }
}
