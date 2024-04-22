class Player {
  // property
  final String name = '희령';
  int xp = 1500;

  // method
  void sayHello() {
    // Dart는 class method 안에서는 this를 쓰지 않는 것을 권장함
    print("Hello my name is $name");
  }
}

// 1. Constructors
class Player2 {
  // 변수 선언만 하고 값은 나중에 받아오기 위해서 late 사용
  late final String name;
  late int xp;

  // constructor method - class의 이름과 같아야 함
  Player2(String name, int xp) {
    this.name = name;
    this.xp = xp;
  }
}

class Player3 {
  final String name;
  int xp;

  // 변수 선언 시 이미 타입을 지정해 주었기 때문에 간단하게 작성 가능
  // 클래스 생성 시 argument의 순서 지켜야 함 (positional arguments)
  Player3(this.name, this.xp);
}

// 2. Named Constructor Parameters
class Player4 {
  final String name;
  String team;
  // 타입이 같은 경우 동시에 선언 가능
  int xp, age;

  // nullable 방지 위해 default value 혹은 required 추가
  Player4({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });
}

// 3. Named Constructors
class Player5 {
  final String name;
  String team;
  int xp, age;

  // ":"으로 class(Player 객체)를 초기화
  // named paremeters
  Player5.createBluePlayer({
    required String name,
    required int age,
  })  : this.name = name,
        this.age = age,
        this.team = 'blue',
        this.xp = 0;

  // 간소화된 방법 (Dart는 간소화된 방법을 추천)
  Player5.createBluePlayer2({
    required this.name,
    required this.age,
    this.team = 'red',
    this.xp = 0,
  });

  // positional parameters는 기본적으로 모두 required임
  Player5.createRedPlayer(String name, int age)
      : this.name = name,
        this.age = age,
        this.team = 'red',
        this.xp = 1000;

  // 간소화된 방법
  Player5.createRedPlayer2(this.name, this.age,
      [this.team = 'red', this.xp = 1500]);
}

// 4. Reacp - API Fetching
class Player6 {
  final String name;
  String team;
  int xp;

  // Player6 클래스 생성 & property 초기화
  Player6.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        team = playerJson['team'],
        xp = playerJson['xp'];

  void sayHello() {
    print("Hello my name is $name");
  }
}

void main() {
  // new를 붙이지 않아도 됨
  var player = Player();
  print(player.xp);
  player.xp = 955;
  print(player.xp);

  var player2 = Player2("수연", 1200);

  var player4 = Player4(
    name: "희령",
    xp: 1500,
    team: "green",
    age: 28,
  );

  var bluePlayer = Player5.createBluePlayer(
    name: '현주',
    age: 28,
  );

  var redPlayer = Player5.createRedPlayer("희령", 1000);

  var apiData = [
    {'name': 'nico', 'team': 'green', 'xp': 1500},
    {'name': 'jim', 'team': 'green', 'xp': 1500},
    {'name': 'cherry', 'team': 'green', 'xp': 1500}
  ];

  apiData.forEach((playerJson) {
    var player = Player6.fromJson(playerJson);
    player.sayHello();
  });
}
