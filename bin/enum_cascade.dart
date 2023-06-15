void main(List<String> arguments) {
  MonsterUcoa m = MonsterUcoa(status: UcoaStatus.normal);
  print("Hello World ");
  m
    ..move()
    ..eat();
}

enum UcoaStatus { normal, poisoned, confused }

class MonsterUcoa {
  final UcoaStatus status;

  MonsterUcoa({this.status = UcoaStatus.normal});

  void move() {
    switch (status) {
      case UcoaStatus.normal:
        print("Ucoa is Moving Gayss");
        break;
      case UcoaStatus.poisoned:
        print("Ucoa cannot move. Ucoa is dying. Ucoa needs help.");
        break;
      case UcoaStatus.confused:
        print("Ucoa is Spinning. Dart languange is confusing");
        break;
      default:
    }
  }

  void eat() {
    print("Ucoa is eating indomie.");
  }
}
