import 'package:flutter/material.dart';
import 'form_pages/FirstFormPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text("Homeworks"),
            centerTitle: true,
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(color: Colors.lightBlue),
                  child: Center(
                    child: Text(
                      '''Homeworks ''',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.dynamic_form,
                    color: Colors.grey,
                  ),
                  title: Text(
                    "Form",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: Icon(
                    Icons.circle_notifications_outlined,
                    color: Colors.grey,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, "/formFirstPage");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case "/formFirstPage":
            return MaterialPageRoute(builder: (context) => FirstFormPage());
            break;
        }
      },
    );
  }
}
