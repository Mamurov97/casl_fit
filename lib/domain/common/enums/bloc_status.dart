///all blocs default status enum
enum BlocStatus { initial, loading, success, error }

///only check phone number enum
enum VerifyPhoneNumberStatus { initial, loading, error, login, register, notFound }

extension StatusExtension<T extends Enum> on T {
  bool get isInitial => name == 'initial';

  bool get isLoading => name == 'loading';

  bool get isSuccess => name == 'success';

  bool get isError => name == 'error';

  bool get isLogin => name == 'login';

  bool get isRegister => name == 'register';

  bool get isNotFound => name == 'notFound';
}
