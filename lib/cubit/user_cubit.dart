import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/User.dart';


class UserCubit extends Cubit<User?> {
  UserCubit() : super(null); // Default state is null (no user added)

  void addUser(String name, int age, String address) {
    emit(User(name: name, age: age, address: address));
  }
}
