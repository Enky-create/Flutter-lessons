import 'package:flutter/material.dart';

class FirstFormPage extends StatefulWidget {
  @override
  State<FirstFormPage> createState() => _FirstFormState();
}

class _FirstFormState extends State<FirstFormPage> {
  final _nameController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Homework"),
        centerTitle: true,
      ),
      body: Form(
          child: ListView(
        padding: EdgeInsets.all(15.0),
        children: [
          TextFormField(
            controller: _nameController,
            autofocus: true,
            decoration: InputDecoration(
              labelText: "Name",
              hintText: "Ivan Ivanov",
              helperText:
                  "Your name cannot be longer 15 characters and cant contain @ symbol",
              prefixIcon: Icon(
                Icons.person,
                color: Colors.blueGrey,
              ),
              suffixIcon: Icon(
                Icons.delete_outline,
                color: Colors.red,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2.0,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
