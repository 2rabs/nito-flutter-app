import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nito_data/src/auth/auth_repository.dart';
import 'package:nito_data/src/auth/data_auth_repository.dart';
import 'package:nito_network/nito_network.dart';

final Provider<AuthRepository> authRepositoryProvider = Provider(
  (ref) => DataAuthRepository(
    authenticator: ref.read(authenticatorProvider),
  ),
);
