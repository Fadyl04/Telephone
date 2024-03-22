import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactLine extends StatelessWidget {

  String? name;
  IconData? icon;
  ContactLine({super.key, required this.name, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {

      },
      leading: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white)
        ),
        child: CircleAvatar(
          backgroundColor: Colors.black,
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
      ),
      title: Text("$name",
        style: TextStyle(
            color: Colors.white
        ),
      ),
    );
  }
}
