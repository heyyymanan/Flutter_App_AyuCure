import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<List<dynamic>> loadImg() async {
  try {
    final String jsonString = await rootBundle.loadString('assets/p_images.json');
    final Map<String, dynamic> jsonResponse = json.decode(jsonString);
    return jsonResponse['products'] as List<dynamic>;
  } catch (e) {
    // Handle errors like missing file or invalid JSON
    debugPrint('Error loading JSON: $e');
    return [];
  }
}
