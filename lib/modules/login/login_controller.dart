import 'package:flutter/material.dart';

import 'login_state.dart';
import 'user_model.dart';

class LoginController {
  LoginState state = LoginStateEmpty();
  VoidCallback onUpdate;

  LoginController({required this.onUpdate});

  Future<UserModel> checkApi() async {
    //TODO implementar a checagem da api

    try {
      state = LoginStateLoading();
      onUpdate();
      final user = await checkApi();
      state = LoginStateSuccess(user: user);
      onUpdate();
    } catch (e) {
      state = LoginStateFailure(message: 'erro');
      onUpdate();
    }
  }
}
