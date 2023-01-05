import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';

class ThemeChange{
  final _box = GetStorage();
  final _key = 'isDarkMode';
  _saveTheme(bool isDarkMode)=>_box.write(_key, isDarkMode);

  bool _loadTheme()=>_box.read(_key)??false;
  ThemeMode get theme=>_loadTheme()?ThemeMode.dark:ThemeMode.light;
  void swithTheme(){
    Get.changeThemeMode(_loadTheme()?ThemeMode.light:ThemeMode.dark);
    _saveTheme(!_loadTheme());
  }
}