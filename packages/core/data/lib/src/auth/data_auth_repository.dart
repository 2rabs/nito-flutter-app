import 'package:core_data/src/auth/auth_repository.dart';
import 'package:core_network/core_network.dart';

/// 認証系のデータ操作リポジトリ
class DataAuthRepository implements AuthRepository {
  final Authenticator _authenticator;

  DataAuthRepository({required Authenticator authenticator})
      : _authenticator = authenticator;

  @override
  Future<bool> signIn(String email, String password) async {
    final response = await _authenticator.signIn(
      email: email,
      password: password,
    );
    return response.session != null;
  }
}
