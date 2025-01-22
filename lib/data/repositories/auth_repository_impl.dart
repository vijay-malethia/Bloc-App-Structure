import 'package:demo/domain/repositories/auth_repository.dart';
import 'package:demo/data/providers/api_provider.dart';

class AuthRepositoryImpl implements AuthRepository {
  final ApiProvider apiProvider;

  AuthRepositoryImpl({required this.apiProvider});

  @override
  Future<String> login(String username, String password) async {
    // Implement login logic here
    final response = await apiProvider
        .post('/login', {'username': username, 'password': password});
    return response['token'];
  }

  @override
  Future<void> logout() async {
    // Implement logout logic here
    await apiProvider.post('/logout', {});
  }
}
