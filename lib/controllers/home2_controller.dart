import '../models/user_model.dart';
import '../repositories/user_repository.dart';

class HomeController {

  final UserRepository _userRepository;

  HomeController(this._userRepository);

  Future<List<UserModel>> getUsers() async {
    return await _userRepository.fetchUsers();
  }
  
}