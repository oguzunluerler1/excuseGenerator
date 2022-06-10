import 'dart:convert';

import 'package:flutter_application_1/models/excuse_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<Excuse?> getRandomExcuse() async {
    final String excUrl = "https://excuser.herokuapp.com/v1/excuse";
    try {
      var response = await http.get(Uri.parse(excUrl)).timeout(Duration(milliseconds: 10000), onTimeout: () {
        return http.Response("Request timed out", 408);
      },);
      if (response.statusCode == 200){
        List<Excuse> data = (jsonDecode(response.body) as List).map((e) => Excuse.fromJson(e)).toList();
        return data[0];
      }
      else {
        print(response.statusCode);
        throw Exception(response.statusCode);
      }
    } catch (e) {
      print(e);
      return null;
    }
  }  
  Future<Excuse?> getFamilyExcuse() async {
    final String excUrl = "https://excuser.herokuapp.com/v1/excuse/family/";
    try {
      var response = await http.get(Uri.parse(excUrl)).timeout(Duration(milliseconds: 10000), onTimeout: () {
        return http.Response("Request timed out", 408);
      },);
      if (response.statusCode == 200){
        List<Excuse> data = (jsonDecode(response.body) as List).map((e) => Excuse.fromJson(e)).toList();
        return data[0];
      }
      else {
        print(response.statusCode);
        throw Exception(response.statusCode);
      }
    } catch (e) {
      print(e);
      return null;
    }
  }  
  Future<Excuse?> getOfficeExcuse() async {
    final String excUrl = "https://excuser.herokuapp.com/v1/excuse/office/";
    try {
      var response = await http.get(Uri.parse(excUrl)).timeout(Duration(milliseconds: 10000), onTimeout: () {
        return http.Response("Request timed out", 408);
      },);
      if (response.statusCode == 200){
        List<Excuse> data = (jsonDecode(response.body) as List).map((e) => Excuse.fromJson(e)).toList();
        return data[0];
      }
      else {
        print(response.statusCode);
        throw Exception(response.statusCode);
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
  Future<Excuse?> getChildrenExcuse() async {
    final String excUrl = "https://excuser.herokuapp.com/v1/excuse/children/";
    try {
      var response = await http.get(Uri.parse(excUrl)).timeout(Duration(milliseconds: 10000), onTimeout: () {
        return http.Response("Request timed out", 408);
      },);
      if (response.statusCode == 200){
        List<Excuse> data = (jsonDecode(response.body) as List).map((e) => Excuse.fromJson(e)).toList();
        return data[0];
      }
      else {
        print(response.statusCode);
        throw Exception(response.statusCode);
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
  Future<Excuse?> getCollegeExcuse() async {
    final String excUrl = "https://excuser.herokuapp.com/v1/excuse/college/";
    try {
      var response = await http.get(Uri.parse(excUrl)).timeout(Duration(milliseconds: 10000), onTimeout: () {
        return http.Response("Request timed out", 408);
      },);
      if (response.statusCode == 200){
        List<Excuse> data = (jsonDecode(response.body) as List).map((e) => Excuse.fromJson(e)).toList();
        return data[0];
      }
      else {
        print(response.statusCode);
        throw Exception(response.statusCode);
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
  Future<Excuse?> getPartyExcuse() async {
    final String excUrl = "https://excuser.herokuapp.com/v1/excuse/party/";
    try {
      var response = await http.get(Uri.parse(excUrl)).timeout(Duration(milliseconds: 10000), onTimeout: () {
        return http.Response("Request timed out", 408);
      },);
      if (response.statusCode == 200){
        List<Excuse> data = (jsonDecode(response.body) as List).map((e) => Excuse.fromJson(e)).toList();
        return data[0];
      }
      else {
        print(response.statusCode);
        throw Exception(response.statusCode);
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}