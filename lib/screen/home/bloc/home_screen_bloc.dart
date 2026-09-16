import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
part 'home_screen_event.dart';
part 'home_screen_state.dart';

class home_screen_Bloc extends Bloc<home_screen_Event, home_screen_State> {
  home_screen_Bloc() : super(home_screen_Initial()) {
    on<home_load_Event>((event, emit) {
      emit(TestState());
    });
  }
}
