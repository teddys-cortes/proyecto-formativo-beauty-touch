// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

import 'package:http/http.dart';

List<Client> clientFromJson(String str) =>
    List<Client>.from(json.decode(str).map((x) => Client.fromJson(x)));

String clientToJson(List<Client> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Client {
  Client({
    this.id_Cli,
    this.name1_cli,
    this.name2_Cli,
    this.lastName1_Cli,
    this.lastName2_Cli,
    this.birthday_Cli,
    this.cellphone_Cli,
    this.email_Cli,
    this.password_Cli,
    this.direction_Cli,
  });

  int id_Cli;
  String name1_cli;
  String name2_Cli;
  String lastName1_Cli;
  String lastName2_Cli;
  String birthday_Cli;
  int cellphone_Cli;
  String email_Cli;
  String password_Cli;
  String direction_Cli;

  factory Client.fromJson(Map<String, dynamic> json) => Client(
      id_Cli: json["id_Cli"],
      name1_cli: json["Name1_Cli"],
      name2_Cli: json["Name2_Cli"],
      lastName1_Cli: json["LastName1_Cli"],
      lastName2_Cli: json["LastName2_cli"],
      birthday_Cli: json["Birthday_Cli"],
      cellphone_Cli: json["cellphone_cli"],
      email_Cli: json["Email_Cli"],
      password_Cli: json["password_Cli"],
      direction_Cli: json["direction_clie"]);

  Map<String, dynamic> toJson() => {
        "id_Cli": id_Cli,
        "Name1_Cli": name1_cli,
        "Name2_Cli": name2_Cli,
        "LastName1_Cli": lastName1_Cli,
        "LastName2_cli": lastName2_Cli,
        "Birthday_Cli": birthday_Cli,
        "cellphone_cli": cellphone_Cli,
        "Email_Cli": email_Cli,
        "password_Cli": password_Cli,
        "direction_clie": direction_Cli
      };
}
