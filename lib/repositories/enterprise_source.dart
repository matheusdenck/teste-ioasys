import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:teste_ioasys/repositories/entities/enterprise_model.dart';
import 'config.dart';

class EnterpriseSource extends GetxController {
  RxList<EnterpriseModel> enterprises = <EnterpriseModel>[].obs;

  EnterpriseSource() {
    getEnterprises();
  }

  Future<http.Response> get enterpriseList async {
    final endPoint = '/api/v1/enterprises';
    if (Authenticator.accessToken != null &&
        Authenticator.uid != null &&
        Authenticator.client != null) {
      final http.Response request = await http.get(
        Uri.parse('${Authenticator.baseUrl}$endPoint'),
        headers: {
          'access-token': Authenticator.accessToken!,
          'client': Authenticator.client!,
          'uid': Authenticator.uid!,
        },
      );

      return request;
    } else {
      return http.Response('{"error": "Sessão expirada."}', 500);
    }
  }

  Future<void> getEnterprises() async {
    final response = await enterpriseList;
    final Map<String, dynamic> json = jsonDecode(response.body);
    final list = EnterpriseModel.fromList(json['enterprises'] as List<dynamic>);
    enterprises.value = list;
  }
}
