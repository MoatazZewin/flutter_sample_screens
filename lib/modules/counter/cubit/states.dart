abstract class CounterStates{}

class CounterInitailState extends CounterStates{}

class CounterPlusState extends CounterStates{
  int number ;

  CounterPlusState(this.number);
}

class CounterMinusState extends CounterStates{
  int number ;

  CounterMinusState(this.number);
}