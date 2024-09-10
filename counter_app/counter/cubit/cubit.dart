
import 'package:flutter_application_1/moduels/counter_app/counter/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCbuit extends Cubit<CounterState> {
  CounterCbuit() : super(counterinitial());
  static CounterCbuit get(context) => BlocProvider.of(context);
  int counter = 1;
  void minius() {
    counter--;
    emit(counterminius(counter));
  }

  void plus() {
    counter++;
    emit(counterplus(counter));
  }
}
