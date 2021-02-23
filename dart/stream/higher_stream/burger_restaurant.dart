import 'dart:async';

import '../broadcast_stream/burger_stand.dart';

class BurgerRestaurant {
  StreamController _controller = StreamController.broadcast();
  Stream get onNewBurgerOrder => _controller.stream;

  Cook cook = Cook();

  void deliverOrderToCook() {
    onNewBurgerOrder
      .transform(BeepBoopTranslator())
      .listen((data) => cook.prepareOrder(data));
  }

  void newOrder(int orderNum) {
    _controller.add(orderNum);
  }
}

class BeepBoopTranslator<S, T> extends StreamTransformerBase<S, T>{
  final StreamTransformer<S, T> transformer;
  
  BeepBoopTranslator() : transformer = createTranslator<S, T>();
  
  @override
  Stream<T> bind(Stream<S> stream) {
    // TODO: implement bind
    throw UnimplementedError();
  }

  static createTranslator<S, T>() =>
    StreamTransformer<S, T>((Stream inputStream, bool cancelOnError) {
      StreamController controller;
      StreamSubscription subscription;
      
      controller = StreamController<T>(
        onListen: () {
          subscription = inputStream.listen(
              (data) => controller.add(binaryNum(data)),
          onDone: controller.close,
          onError: controller.addError,
          cancelOnError: cancelOnError);
        },
//        onPause:
      );

      return controller.stream.listen(null);
    });

  static int binaryNum(data) {
    return 10;
  }
}