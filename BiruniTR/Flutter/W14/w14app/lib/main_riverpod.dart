//RIVERPOD
//ConsumerWidget
/*
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeNotifier extends StateNotifier<ThemeData> {
  ThemeNotifier() : super(_lightTheme);

  static final _lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.light,
  );

  static final _darkTheme = ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.dark,
  );

  void toggleTheme() {
    state = (state.brightness == Brightness.dark) ? _lightTheme : _darkTheme;
  }
}

final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeData>((ref) {
  return ThemeNotifier();
});

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var theme = ref.watch(themeProvider);

    return MaterialApp(
      theme: theme,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Riverpod"),
        ),
        body: Center(
            child: Text(
          "Hello ",
          style: TextStyle(fontSize: 48),
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ref.read(themeProvider.notifier).toggleTheme();
          },
          child: Icon(Icons.brightness_4),
        ),
      ),
    );
  }
}

*/