import 'package:flutter_mvvm/arch/factory.dart';
import 'package:flutter_mvvm/repository/user_repository.dart';
import 'package:flutter_mvvm/view/user/user_view_model.dart';

class UserViewModelFactory extends Factory<UserViewModel> {
  UserRepository _userRepository;

  UserViewModelFactory(this._userRepository);

  @override
  UserViewModel create() {
    return UserViewModel(_userRepository);
  }
}
