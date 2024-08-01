import 'dart:io';
import 'package:flutter/material.dart';

class DocumentService with ChangeNotifier {
  final List<File> _documents = [];

  List<File> get documents => _documents;

  void uploadDocument(File file) {
    _documents.add(file);
    notifyListeners();
  }
}
