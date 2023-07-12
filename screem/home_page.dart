import 'package:flutter/material.dart';

class Abscent extends StatefulWidget {
  const Abscent({super.key});

  @override
  State<Abscent> createState() => _AbscentState();
}

class _AbscentState extends State<Abscent> {
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
    );
  }
}
      //body: GetBuilder<BleutootController>()
        //init: BleutootController(),
        //builder: ((controller) {
          //return Center(
            //child: Column(
              
              //children: [
                //const SizedBox( height: 20),
               //ElevatedButton(
              //onPressed:()=> controller.scanDevices(), 
              //style: ElevatedButton.styleFrom(
                //foregroundColor: const Color(0xFFF0B861),
                //backgroundColor: const Color(0xFF232531),
                //minimumSize: const Size(50, 50),
                //shape: const RoundedRectangleBorder(
                  //borderRadius: BorderRadius.all(Radius.circular(5))
                //)
              //),
              //child:  const Text("appel"
              //),
          //    ),
            //  const SizedBox(height: 20),
              //StreamBuilder<List<ScanResult>>(
       //         stream: controller.scanResults,
         //       builder:(context, snapshot) {
           //       if (snapshot.hasData)  {
             //       ScaffoldMessenger.of(context).showSnackBar(
        //const SnackBar(content: Text('Recherche en cours ...')),
        //);
          //          return ListView.builder(
            //          itemCount: nom.length,
          //itemBuilder: (context, index) {
            //final event= nom[index];
//            final noms= event['Nom'];
  //          final prenom= event['Prenom'];
    //        final classe= event['Classe']
      ///    final avatar= event['avatar'];
      //     return  Card(
        //      child: ListTile(
          //      leading:Image.asset("assets/images/$avatar.jpeg") ,
            //    title:  Text('$prenom ($classe)') ,
              //  subtitle:   Text('$noms'),
   //           ),
     //       );
       //               }
         //             );
           //           
      //          }
        //          else {
          //          return const Center(
                      
     //                 child: Text("aucun élève enregistrer",
                      
       //               textAlign: TextAlign.center),
         //           );
           //       }
                  
             //   }
     //         )
       //       ],
              
  //          ),
    //      );
        
      //  }
        
        
  //  );
  //}

//}

//const SizedBox(height: 20),
 //             StreamBuilder<List<ScanResult>>(
   //             stream: controller.scanResults,
     //           builder:(context, snapshot) {
       //           if (snapshot.hasData)  {
         //           return ListView.builder(
           //           shrinkWrap: true,
             //         itemCount: snapshot.data!.length ,
               //       itemBuilder: (context,index) {
                 //       final data= snapshot.data![index];
                   //     return Card(
                     //     elevation: 2,
                       //   child: ListTile(
                         //   title:text(data.device.name) ,
                           // subtitle:text(data.device.id.id) ,
                            //trailing:text(data.rssi.toString()) ,
                          //),
                        //);

  