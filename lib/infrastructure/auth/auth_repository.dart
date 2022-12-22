import 'package:dio/dio.dart';
import 'package:gauge_app/core/api_client.dart';
import 'package:gauge_app/domain/auth/imp_auth_repo.dart';
import 'package:injectable/injectable.dart';


@LazySingleton(as: ImpAuthRepository)
class AuthRepo extends ImpAuthRepository {
  final APIClient apiClient;
  AuthRepo(this.apiClient);

  @override
  Future<Response> login({required String email, required String password}) {
    // TODO: implement login
    throw UnimplementedError();
  }
}
