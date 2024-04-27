void main() {
  print("hello world!");

  // 1. Var Keyword 변수 재할당 가능
  // 함수나 메서드 내부에 지역 변수를 선언할 때 (권장)
  var name = "희령";

  // 클래스에서 변수나 프로퍼티를 선언할 때
  String myName = "희령";

  // 2. Dynamic Type 웬만하면 사용하지 않는 것 추천
  var color;
  dynamic myColor;

  if (color is String) {
    color.isEmpty;
  }

  // 3. Nullable Variables 기본적으로 모든 변수는 non-nullable
  String? nico = 'nico'; // String 혹은 null이 될 수 있음 -> nullable
  nico = null;

  if (nico != null) {
    nico.isEmpty;
  }
  nico?.isEmpty; // nico가 null이 아닐 때만 실행함

  // 4. Final Variables 변수 재할당 불가능
  final wethter = 'hot';
  final String music = 'lala';

  // 5. Late Variable 초기 데이터 없이 변수 선언 가능, data fetching 시 사용!
  // 값을 할당하기 전에 late 변수를 사용하면 에러 발생
  late final String data;
  // api로 데이터 받은 후에 변수에 할당
  data = 'something';

  // 6. Constant Variables compile-time constant(컴파일 전에 그 value를 알 수 있음)
  // fianl과 같이 변수 재할당 불가능
  // 예를 들면 API 통신 결과로 알 수 있는 값은 컴파일 시에는 알 수 없음 -> 이 경우에는 final 혹은 var 사용
  const APIKey = '1234';

  // final: 런타임 시점에 생성 가능 (API에서 받아온 값, 사용자 입력값)
  // const: 컴파일 시점에 바뀌지 않는 값 (상수)
}
