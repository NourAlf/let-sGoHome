import 'package:letsgohome/utils/api.dart';
import 'package:letsgohome/utils/api_endpoints.dart';

import '../models/add_student.dart';

class AddStudentPost {
  Future<AddStudent> addStudent(AddStudent newStudent) async {
    Map<String, dynamic> jsonPayload = newStudent.toJson();

    try {
      Map<String, dynamic> response = await Api().post(
        url: ApiEndPoints.baseUrl + ApiEndPoints.auth.addStudent,
        body: jsonPayload,
      );

      if (response.containsKey('data')) {
        return AddStudent.fromJson(response['data']);
      } else {
        throw Exception('Invalid response format');
      }
    } catch (e) {
      throw Exception('Failed to add student: $e');
    }
  }
}