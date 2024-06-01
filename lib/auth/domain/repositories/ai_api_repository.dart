
import 'package:quickdefinitionapp1/auth/domain/entities/textResponse.dart';


abstract class AiApiRepository{
  Future<AiResponse> fetchResponse(String inputText);
    

}

