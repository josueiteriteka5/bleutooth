import 'package:flutter/material.dart';
import 'package:flutter_application_1/screem/views/dreamlag.dart';



void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) { 
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Beercheba',
      home: HomePage(),
    );
  }
}

  



