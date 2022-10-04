class LoginDummyModel {
  final String? email;

  final String? password;

  LoginDummyModel({
    this.email,
    this.password,
  });
}

class ProductDummy {
  static final List<LoginDummyModel> login = [
    LoginDummyModel(
      email: 'mikail@gmail.com',
      password: '123456',
    ),
  ];
}
