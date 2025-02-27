import 'package:activity_app/core/network/api_service.dart';
import 'package:activity_app/models/user_model.dart';

class UserRepository {
  final ApiService _apiService;

  UserRepository(this._apiService);

  Future<List<UserModel>> fetchUsers() async {
    final response = await _apiService.getUserData();
    return (response.data as List).map((e) => UserModel.fromJson(e)).toList();
  }
}