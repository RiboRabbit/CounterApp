import 'package:flutter_bloc/flutter_bloc.dart';

enum CounterEvents { increment, decrement }

class CounterBloc extends Bloc<CounterEvents, int> {
  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(CounterEvents event) async*{
    
    switch(event){
      case CounterEvents.increment: 
          yield state + 1;
          break;
      case CounterEvents.decrement:
          yield state - 1;   
          break;

      default: print("Event is not recognized");

    }
  }
}
