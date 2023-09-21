
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartProvider with ChangeNotifier{
  int _counter = 0;
  int get counter => _counter;

  double _totalPrice = 0.0;
  double get totalPrice => _totalPrice;

  void _setPrefItems()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('cart_items', _counter);
    prefs.setDouble('total_price', _totalPrice);
    notifyListeners();
  }
  void _getprefItems()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _counter = prefs.getInt('cart item') ?? 0;
    _totalPrice = prefs.getDouble('total_price') ?? 0.0;
    notifyListeners();
  }

  void addCounter (){
    _counter++;
    _setPrefItems();
    notifyListeners();
  }
  void removeCounter (){
    _counter--;
    _setPrefItems();
    notifyListeners();
  }
  int getCounter (){
    _getprefItems();
    return _counter;
  }


  void addTotalPrice (double coffeePrice){
    _totalPrice = _totalPrice + coffeePrice;
    _setPrefItems();
    notifyListeners();
  }
  void removeTotalPrice (double coffeePrice){
    _totalPrice = _totalPrice - coffeePrice;
    _setPrefItems();
    notifyListeners();
  }
  double getTotalPrice (){
    _getprefItems();
    return _totalPrice;
  }

}