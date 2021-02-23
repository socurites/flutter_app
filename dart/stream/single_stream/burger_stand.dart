import 'dart:async';

class BurgerStand {
  StreamController _controller = StreamController();
  Stream get onNewOrder => _controller.stream;

  Cook cook = new Cook();

  void deliverOrderToCook() {
    onNewOrder.listen((newOrder) {
      cook.prepareOrder(newOrder);
    });
  }

  void newOrder(String order) {
    _controller.add(order);
  }

}

class Cook {
  void prepareOrder(newOrder) {
    print("preparing $newOrder");
  }
}