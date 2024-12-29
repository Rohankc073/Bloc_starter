import 'package:bloc_starter/cubit/arithmetic_cubit.dart';
import 'package:bloc_starter/cubit/counter_cubit.dart';
import 'package:bloc_starter/cubit/dashboard_cubit.dart';
import 'package:bloc_starter/cubit/user_cubit.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  // Registering the Cubits
  _initBloc();
}

void _initBloc() {
  serviceLocator.registerLazySingleton<CounterCubit>(() => CounterCubit());
  serviceLocator
      .registerLazySingleton<ArithmeticCubit>(() => ArithmeticCubit());
  serviceLocator.registerLazySingleton<UserCubit>(() => UserCubit());
  serviceLocator.registerLazySingleton<DashboardCubit>(() =>
      DashboardCubit(serviceLocator(), serviceLocator(), serviceLocator()));
}
