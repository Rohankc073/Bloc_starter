import 'package:bloc_starter/cubit/dashboard_cubit.dart';
import 'package:bloc_starter/view/dasboard_cubit_view.dart';
import 'package:bloc_starter/view/init_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter BLoC',
      home: BlocProvider.value(
        value: serviceLocator<DashboardCubit>(),
        child: const DashboardView(),
      ),
    );
  }
}
