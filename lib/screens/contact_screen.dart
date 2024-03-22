import 'package:flutter/material.dart';
import '../components/contact_line.dart';
import '../models/person.dart';
import 'ajout_contact.dart';


class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {

  final List<Person> personne = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Contact',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search, color: Colors.white,)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert, color: Colors.white,)),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          Text("Mon profil",
            style: TextStyle(
              color: Colors.white54
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white12
            ),
            child: ContactLine(name: 'Fadyl Bouraima', icon: Icons.accessibility),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white12
            ),
            child: ContactLine(name: 'Ajout de vos contacts favoris', icon: Icons.star),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white12
            ),
            child: ContactLine(name: 'Groupes', icon: Icons.group),
          ),
          SizedBox(height: 10,),
          Text("Tous les contacts",
            style: TextStyle(
                color: Colors.white54
            ),
          ),
          ...personne.map((e) => ContactLine(name: e.name! + ' ' + e.surname.toString(), icon: Icons.perm_contact_calendar)).toList(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var contact = await Navigator.push(context, MaterialPageRoute(builder: (context) => AjoutContact(),));
          personne.add(contact);
          setState(() {
          });
        },
        child: Icon(Icons.add, color: Colors.black,),
      ),
    );
  }
}
