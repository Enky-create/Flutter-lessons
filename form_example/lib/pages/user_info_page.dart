import 'package:flutter/material.dart';
import 'package:form_example/model/user.dart';

class UserInfoPage extends StatelessWidget {
  final User userInfo;
  UserInfoPage({required this.userInfo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Info'),
        centerTitle: true,
      ),
      body: Card(
        margin: EdgeInsets.all(16.0),
        child: Column(
          children: _userCheck(
              user:
                  userInfo), /*<Widget>[
            ListTile(
              title: Text(
                '${userInfo.name}',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text('${userInfo.story}'),
              leading: Icon(
                Icons.person,
                color: Colors.black,
              ),
              trailing: Text('${userInfo.country}'),
            ),
            ListTile(
              title: Text(
                '${userInfo.phone}',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              leading: Icon(
                Icons.phone,
                color: Colors.black,
              ),
            ),
          ],*/
        ),
      ),
    );
  }
}

List<Widget> _userCheck({required User user}) {
  List<Widget> list = [
    ListTile(
      title: Text(
        '${user.name}',
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      subtitle: user.story.isNotEmpty ? Text('${user.story}') : null,
      leading: Icon(
        Icons.person,
        color: Colors.black,
      ),
      trailing: user.country.isNotEmpty ? Text('${user.country}') : null,
    ),
    ListTile(
      title: Text(
        '${user.phone}',
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      leading: Icon(
        Icons.phone,
        color: Colors.black,
      ),
    ),
  ];
  if (user.email.isNotEmpty) {
    list.add(
      ListTile(
        title: Text(
          '${user.email}',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        leading: Icon(
          Icons.mail,
          color: Colors.black,
        ),
      ),
    );
  }
  return list;
}
