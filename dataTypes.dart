void main() {
  String name = '희령';
  bool alive = true;
  int age = 28;
  double money = 99.9;

  // int와 double의 부모 클래스
  num x = 12;
  x = 12.5;

  // 1. Lists (array)
  var giveMeFive = true;
  var numbers = [
    1,
    2,
    3,
    4,
    // collection if 조건에 따라 요소를 추가함
    if (giveMeFive) 5,
  ];

  List<int> numbers2 = [1, 2, 3, 4];

  // 2. String Interpolation 텍스트에 변수를 추가하는 방법
  var greeting = "Hello, my name is $name and I'm ${age + 2}";

  // 3. Collection For
  var oldFriends = ['효정', '현주'];
  var newFriends = [
    '데임',
    '수연',
    for (var friend in oldFriends) "✨$friend",
  ];

  // 4. Maps (object)
  // movies, users와 같이 API에서 받은 데이터를 생성할 때는 Map보다는 Class를 추천함

  // Map<String, Object> key는 String, value는 Object
  // object는 어떤 타입이든지 될 수 있음, 타입스크립트의 any와 비슷함
  var player = {
    "name": '희령',
    "hp": 19.9,
    "superpower": false,
  };

  Map<int, bool> checking = {
    1: true,
    2: false,
  };

  Map<List<int>, bool> crazy = {
    [1, 2, 3]: true,
  };

  List<Map<String, Object>> players = [
    {
      'name': '희령',
      'hp': 15.8,
    },
    {
      'name': '현주',
      'hp': 25,
    },
  ];

  // 5. Sets
  // Set의 모든 요소는 유니크함 (중복x)
  var colors = {
    'red',
    'blue',
  };
  Set<String> colors2 = {
    'red',
    'blue',
  };
}
