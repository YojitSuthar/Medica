import 'package:flutter/material.dart';


class WebViewLoading extends ChangeNotifier{
  bool change(bool loading){
    loading=true;
    notifyListeners();
    return loading;
  }
}