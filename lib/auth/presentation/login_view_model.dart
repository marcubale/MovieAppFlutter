import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../core/resource.dart';
import '../data/login_repository.dart';

part 'login_view_model.g.dart';

@injectable
class LoginViewModel extends LoginViewModelBase with _$LoginViewModel {
  LoginViewModel(final LoginRepository repository) : super(repository);
}

abstract class LoginViewModelBase with Store {
  late final LoginRepository repository;

  LoginViewModelBase(this.repository) {
    //repository = LoginRepository();
  }

  @computed
  bool get succesLogin => repository.isLoggedIn;

  @observable
  bool isLoading = false;

  @observable
  String? error;

  @observable
  Resource<bool> login = const Resource.initial();

  Future<void> logIn(String username, String password) async {
    login = const Resource.loading();
    try {
      login = Resource.success(
          data: (await repository.login(
        username,
        password,
      )));

      print(login.data.toString());
    } catch (ex) {
      login = Resource.error(error: ex.toString());
    }
  }
}
