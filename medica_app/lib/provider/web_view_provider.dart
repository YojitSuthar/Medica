import 'package:flutter/material.dart';


class WebViewLoading extends ChangeNotifier{
  bool loading=false;

  void change(int value){
    loading=true;
  }
}