import 'package:flutter/material.dart';
import 'package:flutter_application_1/screem/views/abscent.dart';
import 'package:flutter_application_1/screem/views/ajout_er.dart';
import 'package:flutter_application_1/screem/views/presents.dart';
import 'package:flutter_application_1/screem/views/home_view.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController_pageController=PageController(initialPage: 0);
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: PageController_pageController,
        children: const <Widget> [
        HomeView(),
        Present(),
        Binaire(),
        Ajout(),
        

      ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF232531),
        unselectedItemColor: const Color(0xFF232531),
        selectedItemColor: const Color(0xFF232531),
        currentIndex: _currentIndex,
        onTap:(index){
          setState(() {
            _currentIndex=index;
            
          });
          
        
        PageController_pageController.jumpToPage(_currentIndex);
        
        },
        items : const<BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon:Icon(Icons.home),
          label: 'Home',
          
          ),
        BottomNavigationBarItem(
          icon:Icon(Icons.alarm_off_sharp),
          label: 'Present',
        ),
        BottomNavigationBarItem(
          icon:Icon(Icons.account_circle),
          label: 'Abscent',
          
        ),
        BottomNavigationBarItem(
          icon:Icon(Icons.add_circle_outline),
          label: 'Ajouter',
          
        ),
        

          
        ]
        ),
        );
    
  }
}