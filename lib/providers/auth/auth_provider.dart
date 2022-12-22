import 'package:flutter/cupertino.dart';
import 'package:gauge_app/domain/auth/imp_auth_repo.dart';
import 'package:injectable/injectable.dart';


@injectable
class AuthProvider extends ChangeNotifier {
   ImpAuthRepository repo;

  AuthProvider(this.repo);
}