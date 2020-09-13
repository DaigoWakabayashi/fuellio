
class Calculator {
  Calculator({this.distance, this.ability, this.gasoline});

  final int distance;
  final int ability;
  final int gasoline;

  double _payment;

  String calculatePayment() {
    _payment = distance / ability * gasoline;
    return _payment.toString();
  }

}
