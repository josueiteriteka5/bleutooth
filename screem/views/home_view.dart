import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold( 
      appBar: AppBar(
        backgroundColor: const Color(0xFF232531),
        title: const Text ('home',
        style: TextStyle(
          color: Color(0xFFF0B861),
          fontFamily: 'GrenzeGotisch',
        ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/backs.jpg"),
          fit: BoxFit.cover
          )
        ),
        
        
            
          ),
        
      
    );

  }
}