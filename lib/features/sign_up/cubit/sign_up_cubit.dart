import 'package:bloc/bloc.dart';

import 'package:meta/meta.dart';
import 'package:movie_app/core/networking/auth_api.dart';

import '../../../core/networking/api_endpoints.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());
  void SignUp() {
    final response = AuthApi.postData(path: ApiEndPoints.signup, body: {
// start
    });
  }
}
