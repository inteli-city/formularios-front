import 'package:formularios_front/app/data/adapters/user_adapter.dart';
import 'package:formularios_front/app/data/datasources/user_datasource.dart';
import 'package:formularios_front/app/domain/entities/user_entity.dart';
import 'package:formularios_front/app/domain/failures/failures.dart';
import 'package:gates_microapp_flutter/shared/helpers/errors/errors.dart';
import 'package:gates_microapp_flutter/shared/helpers/network/http_clients/http_client.dart';
import 'package:gates_microapp_flutter/shared/helpers/network/model/http_client_error.dart';

class UserDatasourceImpl implements IUserDatasource {
  final IHttpClient _httpClient;

  UserDatasourceImpl(this._httpClient);
  @override
  Future<UserEntity> loginUser() async {
    try {
      final response = await _httpClient.post('/login-profile');

      return UserAdapter.fromJson(response.data['profile']);
    } on Failure catch (e, stackTrace) {
      if (e is TimeOutError) {
        throw NoInternetConnectionError();
      } else {
        throw UserLoginError(
          stackTrace: stackTrace,
          errorMessage: e.errorMessage,
        );
      }
    }
  }
}
