import 'package:flutter/material.dart';
import '../models/person.dart';

class AjoutContact extends StatefulWidget {
  const AjoutContact({super.key});

  @override
  State<AjoutContact> createState() => _AjoutContactState();
}

class _AjoutContactState extends State<AjoutContact> {
  var nameCon = TextEditingController();
  var surnameCon = TextEditingController();
  var numCon = TextEditingController();
  var emailCon = TextEditingController();

  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_sharp, color: Colors.white,),
        ),
        title: Center(
          child: Text("Ajout contact",
            style: TextStyle(
              color: Colors.white
            ),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Form(
          key: _formkey,
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Nom',
                      labelStyle: TextStyle(
                        color: Colors.white
                      )
                    ),
                    validator: (value){
                      if (value == null || value.isEmpty){
                        return "Renseigner ce champs";
                      }
                      return null;
                    },
                    controller: nameCon,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Prénom',
                        labelStyle: TextStyle(
                            color: Colors.white
                        )
                    ),
                    validator: (value){
                      if (value == null || value.isEmpty){
                        return "Renseigner ce champs";
                      }
                      return null;
                    },
                    controller: surnameCon,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Numéro',
                        labelStyle: TextStyle(
                            color: Colors.white
                        )
                    ),
                    validator: (value){
                      if (value == null || value.isEmpty){
                        return "Renseigner ce champs";
                      }
                      return null;
                    },
                    controller: numCon,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                            color: Colors.white,
                        ),
                    ),
                    validator: (value){
                      if (value == null || value.isEmpty){
                        return "Renseigner ce champs";
                      }
                      return null;
                    },
                    controller: emailCon,
                  ),
                ),
              ],
            )
        ),
      ),
      bottomNavigationBar: ElevatedButton(
        onPressed: () {
          var name = nameCon.text;
          var surname = surnameCon.text;
          var num= numCon.text;
          var email = emailCon.text;
          if(_formkey.currentState!.validate()){
            Navigator.pop(context, Person(name: name, surname: surname, tel: num, email: email));
          }
        },
        child: Text("Sauvegarder",
          style: TextStyle(
              color: Colors.black
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.white)
        ),
      ),
    );
  }
}
