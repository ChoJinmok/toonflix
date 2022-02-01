import 'package:flutter/material.dart';

void main() {
  // runApp은 Widget을 인자로 받는다.
  // Widget은 UI를 만드는 레고 블럭 -> Flutter에서는 Widget이라는 레고 블럭을 통해 화면을 구성한다.
  // Flutter에서 공식적으로 제공하는 Widget들이 많다. (Flutter docs의 Widget Catalog 참고)
  // 실제로 외울 필요 없고, Widget Catalog, 커뮤니티에서 찾아서 사용하면 된다. (실제 20%도 사용 못함)
  // 언어(Dart) 관점에서 보면 Widget은 클래스일 뿐이다.
  runApp(App());
}

// Widget 클래스를 만들기 위해서는 3개의 Flutter core Widget 중 하나를 상속(extends)을 받아야 한다.
// 1. StatelessWidget
// 2. StatefulWidget
// 3. InheritedWidget

class App extends StatelessWidget {
  // StatelessWidget을 상속받기 위해서는 build 메서드를 구현해야 한다. (Flutter 규칙)
  // Flutter는 build 메서드를 실행(호출)시킨다.
  // build 메서드는 반환하는 값을 화면에 보여준다. (= build 메서드는 Widget UI를 만든다.)

  // annotation: 컴파일러에게 특별한 의미를 부여하는 것 (flutter가 아닌 dart에 관한 것)
  // 예) @override: 컴파일러에게 부모 클래스에 이미 있는 메서드를 재정의(override)한다는 것을 알린다.
  @override
  Widget build(BuildContext context) {
    // BuildContext context는 추 후 다룰 것이다.
    // build는 결국 또 다른 Widget을 만들고 있는 것이다.
    // App Widget은 runApp 함수에 전달되는 Widget이다. -> 앱의 root Widget이다.
    // 앱의 모든 화면, 버튼 등은 App Widget을 통해 만들어진다.
    // root Widget은 두 개의 옵션 중 하나를 반환해야 한다.
    // 1. MaterialApp: 구글의 디자인 언어
    // 2. CupertinoApp: 애플의 디자인 언어
    // => Flutter에게 어떤 family의 디자인 언어를 사용할 것인지(어떻게 보이고 싶을지) 알려주는 것
    // 커스텀하고 싶더라도 둘 중 하나를 사용해야 한다. (Flutter는 구글이 만들었기 때문에 MaterialApp이 더 많이 사용된다.)
    return MaterialApp(
      // home에 또 다른 Widget을 전달해야 한다.
      // 사용자가 앱의 home 화면에 보여줄 Widget을 전달해야 한다.
      // home: Text('Hello, World!') => 에러는 없지만 화면에 이상하게 보인다.
      // Flutter의 규칙 중 화면이 scaffold(화면의 구조)라는 Widget을 가져야 한다는 규칙이 있다.
      // scaffold는 navigation bar, bottom tab bar, floating action button 등을 포함한다.
      home: Scaffold(
        // appBar도 또 다른 Widget을 전달해야 한다.
        appBar: AppBar(
          // AppBar에는 다양한 property가 있다.
          // centerTitle: false,
          // elevation: 099,
          // title에도 또 다른 Widget을 전달해야 한다.
          // Center는 자식 Widget을 가운데 정렬하는 Widget이다.
          title: Center(
            child: Text('Hello, Flutter!'),
          ),
        ),
        // body에도 또 다른 Widget을 전달해야 한다.
        body: Text('Hello, World!'),
      ),
    );
  }
}
