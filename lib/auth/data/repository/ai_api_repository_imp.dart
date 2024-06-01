import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:quickdefinitionapp1/auth/domain/entities/textResponse.dart';
import 'package:quickdefinitionapp1/auth/domain/repositories/ai_api_repository.dart';
import 'package:quickdefinitionapp1/core/secrets/app_secrets.dart';

class AiApiRepositoryImpl implements AiApiRepository{
  @override
  Future<AiResponse> fetchResponse(String inputText)  async
  {
    AiResponse aiResponse = AiResponse("");
    final model = GenerativeModel(model: 'gemini-1.5-flash', apiKey: AppSecrets.apiKey);

   try{
    final content = [Content.text("Be a dictionary and give me a brief and good Description of 200 characters of what it is $inputText ")];
    final response = await model.generateContent(content);
    String? vari = response.text;
    aiResponse = AiResponse(vari!);
    return aiResponse;
   }
   catch(e){

    print("failed to generate the content $e");

    return aiResponse;

   }
  
  }

}