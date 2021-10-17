// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);
import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    required this.success,
    required this.uSeqNo,
    required this.clientId,
    required this.rmkrs,
  });

  int success;
  String uSeqNo;
  String clientId;
  String rmkrs;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    success: json["Success"],
    uSeqNo: json["USeqNo"],
    clientId: json["ClientID"],
    rmkrs: json["Rmkrs"],
  );

  Map<String, dynamic> toJson() => {
    "Success": success,
    "USeqNo": uSeqNo,
    "ClientID": clientId,
    "Rmkrs": rmkrs,
  };
}
