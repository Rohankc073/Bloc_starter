import 'package:flutter_bloc/flutter_bloc.dart';

// We use Cubit/BLoC to separate the Business Logic from UI to manage state

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(100); //Default Value for Parent Constructor

  void increment(){
    emit(state+1);
  }

  void decrement(){
    if (state==98) {
      return;
    }
    emit(state - 1);
  }

  void reset(){
    emit(100);
  }

}