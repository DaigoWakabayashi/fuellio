//計算する関数

class Calculator {
  Calculator({this.distance, this.ability, this.gasoline});


  //ここで定数を定義
  final int distance;
  final int ability;
  final int gasoline;

  double _payment;

  String calculatePayment() {
    _payment = distance / ability * gasoline;
    return _payment.toString();
  }

}
