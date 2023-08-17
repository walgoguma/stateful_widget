import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: const Scaffold(
        backgroundColor: Color(0xfff4eddb),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                'Click Count',
              MyLargeTitle(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatelessWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        //! 사용시 : Theme.of(context).textTheme.titleLarge.color가 확실히 존재함은 알려줌 (sure)
        //color: Theme.of(context).textTheme.titleLarge!.color
        //? 사용시: 만약 Theme.of(context).textTheme.titleLarge.color 가 존재한다면 사용하라는 의미
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}
