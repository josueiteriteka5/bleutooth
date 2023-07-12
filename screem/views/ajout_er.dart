import 'package:flutter/material.dart';
class Ajout extends StatefulWidget {
  const Ajout({super.key});
  

  @override
  State<Ajout> createState() => _AjoutState();
}

class _AjoutState extends State<Ajout> {
  final fromKey = GlobalKey<FormState>();
  final titleController = TextEditingController();
  final descriptionController= TextEditingController();
  final userController = TextEditingController();
  @override
  void dispose(){
    titleController.dispose();
    descriptionController.dispose();
    userController.dispose();
    super.dispose();
  }

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: const Color(0xFF232531),
        title: const Text('Formulaire',
        style: TextStyle(
          color: Color(0xFFF0B861),
          fontFamily: 'GrenzeGotisch',
        ),
        ),
      ),
    body: Form(
      key: fromKey,
      child:  ListView(
          children: [
            Padding(
        padding: const EdgeInsets.only(top: 16.0,right: 16.0,left: 16.0,bottom: 8.0),
            child: TextFormField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: 'Nom de Famille',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))
                )
              ),
               validator: (value) {
          if (value == null || value.isEmpty) {
        return 'entrer le nom';
          }
          return null;
        },

      ),
            ),
             Padding(
        padding: const EdgeInsets.only(top: 16.0,right: 16.0,left: 16.0,bottom: 8.0),
            child: TextFormField(
              controller: descriptionController,
              decoration: const InputDecoration(
                labelText: 'Prenom',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))
                )
              ),
               validator: (value) {
          if (value == null || value.isEmpty) {
        return 'entrer le Prenom';
          }
          return null;
        },
      ),
            ),
             Padding(
        padding: const EdgeInsets.only(top: 16.0,right: 16.0,left: 16.0,bottom: 8.0),
            child: TextFormField(
              controller: userController,
              decoration: const InputDecoration(
                labelText: 'Classe',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))
                )
              ),
               validator: (value) {
          if (value == null || value.isEmpty) {
        return 'saisir la Classe';
          }
          return null;
        },
      ),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                       style: const ButtonStyle(
                         backgroundColor: MaterialStatePropertyAll(Color(0xFF232531))
                ),
                onPressed:() {
                  if (fromKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Enregistrement en cours ...')),
        );
        FocusScope.of(context).requestFocus(FocusNode());
                  }
                },
                 child: const Text('Enregistrer',
                 style: TextStyle(
                  fontFamily: 'GrenzeGotisch',
              color: Color(0xFFF0B861)
                 ),
                 )
                 ),
            )
            
          ],
        ),
      )
      );
        
       
  }

  }
   
    
    
