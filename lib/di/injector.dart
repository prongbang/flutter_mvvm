
import 'package:flutter_mvvm/api/api_service.dart';
import 'package:flutter_mvvm/repository/user_repository.dart';
import 'package:flutter_mvvm/viewmodel/user_view_model_factory.dart';

class Injector {

  static ApiService provideApiService() {
    return ApiService();
  }

  static UserViewModelFactory provideUserViewModelFactory() {
    return UserViewModelFactory(provideUserRepository());
  }

  static UserRepository provideUserRepository() {
    return UserRepository(provideApiService());
  }
}