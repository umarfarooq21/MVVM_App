import 'package:red_clan_network/red_clan_network.dart';

class RedService{

  final ApiService apiService = ApiService();
  // Fetch data from the API
  Future<Object> fetchData<T>(T Function(dynamic) modelFromJson, url) async {
    var response = await apiService.request<T>(
      url: url,
      method: 'GET',
      modelFromJson: modelFromJson,
      successStatusCodes: [200, 201],
    );

    if (response.isSuccess){
      return response;
    }else{
      return response.code;
    }

  }
}