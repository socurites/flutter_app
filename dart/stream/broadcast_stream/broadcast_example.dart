import 'burger_stand.dart';

main() {
  var burgerStand = BurgerStand();
  burgerStand.deliverOrderToCook();

  burgerStand.newOrder(Burger());
  burgerStand.newOrder(Fry());
}