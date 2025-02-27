import 'package:dio/dio.dart';
import '../network/dio_client.dart';

class ApiService {
   final DioClient _dioClient;

   ApiService(this._dioClient);

   Future<Response> getUserData() async {
      try {
        final response = await _dioClient.dio.get("/users");
        return response;
      } catch (e) {
        throw Exception(e);
      }
   }
}