// 6. Enums - "text" 형태로 작성하지 않음
// enum 사용 시 Team.red 형식으로 사용
enum Team { red, blue, green }

enum XPLevel { beginner, medium, pro }

// 7. Abstract Classes - 플러터에서 자주 사용하지는 않음
// 추상화 클래스로는 객체를 생성할 수 없음
// 추상화 클래스는 이를 상속받는 모든 클래스가 가지고 있어야 하는 메소드를 정의함
abstract class Human {
  // 메소드의 이름과 반환 타입만 정의
  void walk();
}

// Player 클래스는 Human 클래스를 상속했기 때문에 walk() 메소드를 필수로 가져야 함
class Player extends Human {
  String name;
  // 타입에 enum 적용
  Team team;
  XPLevel xp;

  Player({
    required this.name,
    required this.team,
    required this.xp,
  });

  void walk() {
    print("The player is walking");
  }

  void sayHello() {
    print('Hello my name is $name');
  }
}

class Coach extends Human {
  void walk() {
    print('The coach is walking');
  }
}

void main() {
  // 5. Cascade Notation
  // 프로퍼티를 수정하고 싶을 때 - ".."은 player를 나타냄 (세미콜론에 주의)
  var player = Player(name: "희령", team: Team.green, xp: XPLevel.beginner)
    ..name = "체리"
    ..team = Team.red
    ..xp = XPLevel.pro;
}
