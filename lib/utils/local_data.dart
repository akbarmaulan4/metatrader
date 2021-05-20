import 'dart:convert';

import 'package:meta_trader/utils/text_constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalData{

  static Future<bool> removeAllPreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.clear();
  }

  static void saveRemember(String val) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(TextConstant.remeber, val);
  }

  static Future<String> getRemember() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var data = prefs.getString(TextConstant.remeber);
    if (data != null && data.isNotEmpty) {
      return data;
    }
    return '';
  }

  static Future<bool> removeRemember() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove(TextConstant.remeber);
  }


  static Future<bool> removeUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove(TextConstant.user);
  }

  static void savePlayerId(String val) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(TextConstant.playerId, val);
  }

  static Future<String> getPlayerId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var data = prefs.getString(TextConstant.playerId);
    if (data != null && data.isNotEmpty) {
      return data;
    }
    return null;
  }

  static Future<bool> removePlayerId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove(TextConstant.playerId);
  }

  static void haveNotif(bool val) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(TextConstant.notif, val);
  }

  static Future<bool> getNotif() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var data = prefs.getBool(TextConstant.notif);
    if (data != null) {
      return data;
    }
    return null;
  }

  static Future<bool> removeNotif() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove(TextConstant.notif);
  }

  static void haveChat(bool val) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(TextConstant.chat, val);
  }

  static Future<bool> getChat() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var data = prefs.getBool(TextConstant.chat);
    if (data != null) {
      return data;
    }
    return null;
  }

  static Future<bool> removeChat() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove(TextConstant.chat);
  }
}