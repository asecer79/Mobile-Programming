//BLOC - BUSINESS LOGIC COMPONENT

//event base
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class ThemeEvent {}

//sub events

class LightThemeEvent extends ThemeEvent {}

class DarkThemeEvent extends ThemeEvent {}

class ColorfulThemeEvent extends ThemeEvent {}

class ThemeState {
  ThemeState({required this.themeData});

  final ThemeData themeData;

  factory ThemeState.light() {
    return ThemeState(themeData: ThemeData.light());
  }

  factory ThemeState.dark() {
    return ThemeState(themeData: ThemeData.dark());
  }
  factory ThemeState.colorful() {
    return ThemeState(
        themeData: ThemeData(
      primarySwatch: Colors.pink,
      primaryColor: Colors.amber,
    ));
  }
}

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState.light()) {
    on<LightThemeEvent>((event, emit) {
      emit(ThemeState.light());
    });

    on<DarkThemeEvent>((event, emit) {
      emit(ThemeState.dark());
    });

    on<ColorfulThemeEvent>((event, emit) {
      emit(ThemeState.colorful());
    });
  }
}
/*
void main() {
  runApp(MyApp());
}
*/
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            theme: state.themeData,
            home: Scaffold(
              appBar: AppBar(
                title: Text("Bloc Arch"),
              ),
              body: Center(
                  child: Text(
                "Hello",
                style: TextStyle(fontSize: 50),
              )),
              floatingActionButton: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      context.read<ThemeBloc>().add(LightThemeEvent());
                    },
                    child: Icon(Icons.wb_sunny),
                  ),
                  SizedBox(height: 10),
                  FloatingActionButton(
                    onPressed: () {
                      context.read<ThemeBloc>().add(DarkThemeEvent());
                    },
                    child: Icon(Icons.nights_stay),
                  ),
                  SizedBox(height: 10),
                  FloatingActionButton(
                    onPressed: () {
                      context.read<ThemeBloc>().add(ColorfulThemeEvent());
                    },
                    child: Icon(Icons.palette),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
