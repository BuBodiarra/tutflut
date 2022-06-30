
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:tutoflut/core/error/failure.dart';
import 'package:tutoflut/data/models/request/question_request.dart';
import 'package:tutoflut/data/models/response/question_response.dart';

class RemoteApi{

  static const String url = "https://opentdb.com/api.php";

  Future<List<QuestionResponse>> getQuestions(QuestionRequest request) async {

    //appel Web service
    try {
      final response = await Dio().get(url, queryParameters: request.toMap());

      //Recuperer la reponse

      if (response.statusCode == 200) {
        final data = Map<String, dynamic>.from(response.data);
        final results = List<Map<String, dynamic>>.from(data["results"]);
        if (results.isNotEmpty) {
          return results.map((e) => QuestionResponse.fromMap(e)).toList();
        }
      }
      return [];
    }on DioError catch(err){
      print(err);
      throw Failure(message: err.response?.statusMessage?? "choisissez!");
    } on SocketException catch(err){
      print(err);
      throw Failure(message: "verifier votre connection");
    }
  }
}