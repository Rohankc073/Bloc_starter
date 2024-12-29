import 'package:flutter_bloc/flutter_bloc.dart';

class ArithmeticCubit extends Cubit<double> {
  ArithmeticCubit() : super(0);

  void add(double first, double second) {
    emit(first + second);
  }

  void subtract(double first, double second) {
    emit(first - second);
  }

  void multiply(double first, double second) {
    emit(first * second);
  }
}
