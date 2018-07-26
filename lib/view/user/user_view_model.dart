import 'dart:async';

import 'package:flutter_mvvm/model/Resource.dart';
import 'package:flutter_mvvm/model/user.dart';
import 'package:flutter_mvvm/repository/user_repository.dart';
import 'package:flutter_mvvm/arch/view_model.dart';
import 'package:rxdart/rxdart.dart';

class UserViewModel extends ViewModel {
  UserRepository _userRepository;

  UserViewModel(this._userRepository);

  Future<PublishSubject<Resource<List<User>>>> loadUser(int size) async {
    return _userRepository.loadUser(size);
  }

  @override
  void dispose() {
    _userRepository.dispose();
  }
}
