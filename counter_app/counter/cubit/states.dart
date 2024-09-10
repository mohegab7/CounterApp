abstract class CounterState {}

class counterinitial extends CounterState {}

class counterplus extends CounterState {
  final int counter;

  counterplus(this.counter);
}

class counterminius extends CounterState {
  final int counter;
  counterminius(this.counter);
}
