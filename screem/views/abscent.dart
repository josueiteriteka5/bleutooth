import 'package:flutter/material.dart';

class Binaire extends StatefulWidget {
  const Binaire({super.key});

  @override
  State<Binaire> createState() => _BinaireState();
}

class _BinaireState extends State<Binaire> {
    final nom= [{
    "Nom": 'Iteriteka',
    "Prenom": 'Josue',
    "Classe": 'Seconde S',
    "avatar": 'logo',
  },
  {
    "Nom": 'justin',
    "Prenom": 'Gamana',
    "Classe": 'Terminal S',
    "avatar": 'justin',
  },
  {
    "Nom": 'Sadio',
    "Prenom": 'Mané',
    "Classe": 'Premiere SD',
    "avatar": 'sadio',
  }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF232531),
        title: const Text("Abscent",
        style: TextStyle(
          color: Color(0xFFF0B861),
          fontFamily: 'GrenzeGotisch',
        ), 
        ),
      ),
      body: Center(
        child: Column(children: [
          ListView.builder(
          itemCount: nom.length,
          itemBuilder: (context, index) {
            final event= nom[index];
            final noms= event['Nom'];
            final prenom= event['Prenom'];
            final classe= event['Classe'];
            final avatar= event['avatar'];
            return Card(
              child: ListTile(
                leading:Image.asset("assets/images/$avatar.jpeg") ,
                title:  Text('$prenom ($classe)') ,
                subtitle:   Text('$noms'),
              ),
            );
          },
        ),
         ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll( Color(0xFF232531))
              ),
              onPressed:()=>{},
             child: const Text("appel",
             style: TextStyle(
              fontFamily: 'GrenzeGotisch',
              color: Color(0xFFF0B861)

             ),
             ),

             ),

        ],
      ) ,
      

        ),
    );
  }
}
