import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../repositories/user_repository.dart';

class HomeController extends ChangeNotifier {
  final UserRepository _userRepository;

  List<UserModel> _users = [];
  List<UserModel> get users => _users;

  HomeController(this._userRepository);

  Future<void> fetchUsers() async {
    try {
      _users = await _userRepository.fetchUsers();
      notifyListeners();  // ✅ Agar UI bisa terupdate otomatis
    } catch (e) {
      print("Error fetching users: $e");
    }
  }
}
