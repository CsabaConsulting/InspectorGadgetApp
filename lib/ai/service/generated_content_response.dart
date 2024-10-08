import 'package:firebase_vertexai/firebase_vertexai.dart';

extension GeneratedContentResponse on GenerateContentResponse {
  String strippedText() {
    if (text == null || text!.isEmpty) {
      return '';
    }

    if (text!.contains('</response>')) {
      var responseBeginIndex = text!.indexOf('<response>');
      if (responseBeginIndex > 0) {
        responseBeginIndex += '<response>'.length;
      } else {
        responseBeginIndex = 0;
      }

      final responseEndIndex = text!.indexOf('</response>');
      return text!.substring(responseBeginIndex, responseEndIndex).trim();
    }

    return text!;
  }
}
