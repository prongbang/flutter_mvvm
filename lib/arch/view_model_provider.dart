import 'package:flutter_mvvm/arch/factory.dart';
import 'package:flutter_mvvm/arch/view_model.dart';

class ViewModelProviders {
  static T of<T extends ViewModel>(Factory factory) {
    return factory.create() as T;
  }
}
