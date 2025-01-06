import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:praktikum_1/meet7/model/User.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class localData extends StatefulWidget {
  localData({super.key});

  @override
  State<localData> createState() => _localDataState();
}

String nama = "evi";
String SavedName = "";
String token = "aw3sDesfs6f16d";
String SavedToken = "";

class _localDataState extends State<localData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  SaveSharedPreference();
                },
                child: Text('Save Data'),
              ),
              ElevatedButton(
                onPressed: () {
                  getSharedPreference();
                },
                child: Text('Get Nama'),
              ),
              ElevatedButton(
                onPressed: () {
                  ClearData();
                },
                child: Text('Clear Data'),
              ),
              Text(SavedName.isNotEmpty
                  ? "user : $SavedName"
                  : "user : gada data"),
              ElevatedButton(
                onPressed: () {
                  SaveSecureStorage();
                },
                child: Text("save token"),
              ),
              ElevatedButton(
                onPressed: () {
                  getStorage();
                },
                child: Text("get token"),
              ),
              Text(
                  SavedToken.isNotEmpty ? "token:$SavedToken" : "gada aturan,"),
              ElevatedButton(
                onPressed: () {
                  SaveLocalStorage();
                },
                child: Text("SaveLovcal"),
              ),
              ElevatedButton(
                onPressed: () {
                  GetLocalStorage();
                },
                child: Text("GetLocal"),
              ),
              Text(LocalUser != null
                  ? "User: ${LocalUser!.username}, token : ${LocalUser!.token}"
                  : "User: Gada Data"),
            ],
          ),
        ),
      ),
    );
  }

  void SaveSharedPreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("username", nama);
  }

  void getSharedPreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      SavedName = prefs.getString("username")!;
    });
  }

  void ClearData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      SavedName = "";
    });
  }

  void SaveSecureStorage() async {
    final storage = FlutterSecureStorage();
    await storage.write(key: "usertoken", value: token);
  }

  void getStorage() async {
    final storage = FlutterSecureStorage();
    String? value = await storage.read(key: "usertoken");
    setState(() {
      SavedToken = value ?? "data data";
    });
  }

  void SaveLocalStorage() async {
    final filename = 'local_user';
    final file = File(
        '${(await getApplicationDocumentsDirectory()).path}/$filename.json');
    User user = User(username: nama, token: token);
    await file.writeAsString(jsonEncode(user.tolson()));
  }

  User? LocalUser;
  Future<void> GetLocalStorage() async {
    final fileename = 'local_user';
    final file = File(
        '${(await getApplicationDocumentsDirectory()).path}/$fileename.json');
    String fileContent = await file.readAsString();
    setState(() {
      LocalUser = User.FromJson(jsonDecode(fileContent));
    });
  }
}
