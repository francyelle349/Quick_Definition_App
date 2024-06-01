import 'package:quickdefinitionapp1/auth/domain/entities/textResponse.dart';
import 'package:quickdefinitionapp1/auth/domain/repositories/ai_api_repository.dart';

class fetchAiResponse {
  final AiApiRepository repository;

  fetchAiResponse(this.repository);


  Future<AiResponse> execute(String inputText){
    return repository.fetchResponse(inputText);
  }

}