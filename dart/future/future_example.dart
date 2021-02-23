void main() {
  print('A');
  futurePrint(Duration(milliseconds: 1), "B")
    .then((value) => print(value));
  print("C");
  futurePrint(Duration(milliseconds: 2), "D")
      .then((value) => print(value));
  print("E");
}

Future<String> futurePrint(Duration dur, String msg) {
  return Future.delayed(dur)
      .then((value) => msg);
}