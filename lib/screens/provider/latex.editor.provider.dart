import 'package:flutter/material.dart';

class LatexEditorProvider with ChangeNotifier {
  String _latexCode = "";

  String get latexCode => _latexCode;

  setLatexCode(String latexCode) {
    _latexCode = latexCode;
    notifyListeners();
  }
}
