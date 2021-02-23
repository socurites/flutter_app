import 'dart:async';

class BurgerStand {
  StreamController<Order> _controller = StreamController.broadcast();

  Stream get onNewBurgerOrder => _controller.stream.where((Order order) => (order is Burger));
  Stream get onNewFryOrder => _controller.stream.where((Order order) => (order is Fry));

  Cook grillCook = Cook();
  Cook fryCook = Cook();

  void deliverOrderToCook() {
    onNewBurgerOrder.listen((newOrder) {
      grillCook.prepareOrder(newOrder);
    });

    onNewFryOrder.listen((newOrder) {
      fryCook.prepareOrder(newOrder);
    });
  }

  void newOrder(Order order) {
    _controller.add(order);
  }
}

class Order {}
class Burger extends Order {}
class Fry extends Order {}

class Cook {
  void prepareOrder(newOrder) {
    print("preparing $newOrder");
  }
}