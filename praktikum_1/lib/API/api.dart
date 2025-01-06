import 'package:http/http.dart';
import 'package:praktikum_1/API/model/todo_api_model.dart';

class TodoApi {
  String baseUrl = "https://6767d3e0c1de2e6421c85934.mockapi.io/todo";
  var client = Client();

  Future<dynamic> get() async {
    var url = Uri.parse(baseUrl);
    var response = await client.get(url);

    if (response.statusCode == 200) {
      return todoApiModelFromJson(response.body);
    } else {
      return null;
    }
  }

  Future<dynamic> getById({required String id}) async {
    var url = Uri.parse("$baseUrl/$id");
    var response = await client.get(url);

    if (response.statusCode == 200) {
      return todoApiModelFromJson(response.body);
    } else {
      return null;
    }
  }

  Future<dynamic> post({required String title}) async {
    var url = Uri.parse(baseUrl);
    var body = {"title": title};
    var response = await client.post(url, body: body);

    if (response.statusCode == 201) {
      return response.body;
    } else {
      return null;
    }
  }

  Future<dynamic> put({required String id, required String title}) async {
    var url = Uri.parse("$baseUrl/$id");
    var body = {"title": title};
    var response = await client.put(url, body: body);

    if (response.statusCode == 200) {
      return (response.body);
    } else {
      return null;
    }
  }

  Future<dynamic> delete({required String id}) async {
    var url = Uri.parse("$baseUrl/$id");
    var response = await client.delete(url);

    if (response.statusCode == 200) {
      return response.body;
    } else {
      return null;
    }
  }
}
