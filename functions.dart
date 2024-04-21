// void는 return 값이 없는 함수를 의미
void sayHello(String name) {
  print("Hello $name nice to meet you!");
}

// fat arrow syntax -> 코드가 한 줄뿐일 때, 곧바로 결과값을 return함
num plus(num a, num b) => a + b;

void main() {
  // 1. Named Parameters 순서에 관계없이 argument를 작성할 수 있음
  // Named Parameters의 반대는 Positional Paremeters는 argument를 순서대로 입력해야 함
  // Named Parameter를 사용하기 위해서는 함수 파라미터들을 중괄호로 묶어줌

  // 일부 파라미터가 들어오지 않을 경우(null safety)를 위한 두 가지 방법
  // 방법1 - 파라미터에 default value 추가
  String sayHi({
    String name = '익명',
    int age = 22,
    String country = 'koree',
  }) {
    return "Hi $name, you are $age, and you came from $country";
  }

  // 방법2 - 파라미터를 필수로 지정 (required modifier)
  String sayHi2({
    required String name,
    required int age,
    required String country,
  }) {
    return "Hi $name, you are $age, and you came from $country";
  }

  print(sayHi(age: 12, country: "korea", name: "희령"));
  // 모든 파라미터에 dafault value가 있다면 argument를 전달하지 않아도 됨
  print(sayHi());

  // 3. Optional Positional Parameters
  // 해당 파라미터를 대괄호로 감싸고, ?를 추가하고, default value까지 추가
  String sayHello2(String name, int age, [String? country = 'korea']) =>
      "Hi $name, you are $age, and you came from $country";

  // 4. QQ Operator (question question)
  // left ?? right - 좌항이 null이면 우항을 return함, 좌항이 null이 아니면 좌항을 그대로 return함
  String capitalizeName(String? name) => name?.toUpperCase() ?? "익명";

  capitalizeName("희령");
  capitalizeName(null);

  // QQ equals or QQ assignment operator
  // variable ??= value 만약 variable이 null이라면 value를 할당함
  String? city;
  city ??= 'hawaii';
  city = null;
  city ??= 'suwon';

  // 5. Typedef 자료형이 헷갈릴 때 도움이 되는 alias를 만드는 방법
  // good (간단한 데이터 구조에 사용)
  // typedef IntList = List<int>;
  // IntList reverseListOfNumbers(IntList list) {
  //   var reversed = list.reversed;
  //   return reversed.toList();
  // }

  // bad - 구조화된 데이터의 형태를 지정하고 싶다면 Class를 사용함
  // typedef UserInfo = Map<String, String>;

  String sayBye(Map<String, String> userInfo) {
    return "Bye ${userInfo['name']}";
  }

  sayBye(
      {'gender': 'female'}); // name이 아님 gender를 value로 가졌지만 타입 상으로는 문제가 발생하지 않음
}
