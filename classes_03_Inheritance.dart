enum Team { red, blue }

class Human {
  final String name;
  Human({required this.name});
  void sayHello() {
    print("Hello my name is $name");
  }
}

mixin class Strong {
  final double strengthLevel = 1500.99;
}

mixin class QuickRunner {
  void runQuick() {
    print('ruuuuun!');
  }
}

// 8. Inheritance 상속
class Player extends Human {
  final Team team;
  // 부모 클래스가 생성자 함수를 가지고 있다면 자식 클래스가 그 부모 클래스의 생성자 함수를 호출해줘야 함
  // Player 생성자 함수에 있는 name을 Human 클래스 생성자 함수에 전달함
  Player({
    required this.team,
    required String name,
    // super 키워드는 부모 클래스를 의미함
    // super 키워드를 통해 부모 클래스의 프로퍼티에 접근하거나 메소드를 호출할 수 있음
  }) : super(name: name);

  // Sugar Syntax
  // Player({
  //   required this.team,
  //   required super.name,
  // });

  // 부모 클래스로부터 상속받은 메소드를 직접 만든 메소드로 override(대체)함
  @override
  void sayHello() {
    // 부모 클래스에서 상속받은 메소드 + 내가 만든 메소드를 추가
    super.sayHello();
    print("and I play for $team");
  }
}

// 9. Mixins 생성자가 없는 클래스
// 단순하게 클래스에 프로퍼티나 메소드를 추가할 때 사용함, 여러 클래스에 재사용 가능
// 부모-자식 클래스 관계가 되는 것은 아님
class Horse with Strong, QuickRunner {}

class Kid with QuickRunner {}

void main() {
  var player = Player(team: Team.red, name: "희령");
}
