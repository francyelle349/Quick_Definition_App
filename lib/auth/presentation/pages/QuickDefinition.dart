import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quickdefinitionapp1/auth/data/repository/ai_api_repository_imp.dart';
import 'package:quickdefinitionapp1/auth/domain/usecases/fetch_ai_response.dart';
import 'package:quickdefinitionapp1/auth/presentation/widgets/auth_field.dart';
import 'package:quickdefinitionapp1/core/theme/app_pallete.dart';

class quickDefinitionApp extends StatefulWidget {
  const quickDefinitionApp({super.key});

  @override
  State<quickDefinitionApp> createState() => _quickDefinitionAppState();
}

class _quickDefinitionAppState extends State<quickDefinitionApp> {
  final _controller = TextEditingController();
  late final fetchAiResponse _fetchAIResponse;
  String _response = '';

  @override
  void initState() {
    super.initState();
    _fetchAIResponse = fetchAiResponse(AiApiRepositoryImpl());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(15.0),

      child:SingleChildScrollView( child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Quick Definition ',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          authField(
            controller: _controller,
            hintText: 'Search your definition',
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: _getResponse,
            child: Text(
              'Search',
              style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
                fixedSize: Size(100, 55),
                backgroundColor: AppPallete.purple,
                shadowColor: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: _response.isEmpty ? Colors.transparent : AppPallete.purple,
                borderRadius: BorderRadius.circular(10), ),

            child: Text(_response, style: TextStyle(color: Colors.white)),

          )
        ],
      ),
    )));
  }

  void _getResponse() async {
    var response = await _fetchAIResponse.execute(_controller.text);
    setState(() {
      _response = response.textResponse;
    });
  }
}
