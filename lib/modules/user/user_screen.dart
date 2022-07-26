import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/user_model/user_model_class.dart';



class UserScreen extends StatelessWidget {
  // const UserScreen({Key? key}) : super(key: key);
  List<UserModel> users=[
    UserModel(id: 1, name: "moataz ahemd", phone: '01113527594'),
    UserModel(id: 2, name: "hager ahemd", phone: '01113366594'),
    UserModel(id: 2, name: "mohamed ahemd", phone: '0100324987'),
    UserModel(id: 2, name: "hiam ahemd", phone: '01448759632'),
    UserModel(id: 2, name: "hassan ahemd", phone: '01523698754'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Users"
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context , index) => bulidUserItem(users[index]),
          separatorBuilder: (context, index) => Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20.0
            ),
            child: Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[300],
            ),
          ),
          itemCount: users.length)


    );
  }

  Widget bulidUserItem(UserModel user) => Padding(
    padding: EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 30.0,
          child: Text(
            "${user.id}",
            style: TextStyle(
                fontSize: 30.0
            ),
          ),

        ),

        SizedBox(width: 10.0,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("${user.name}",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("${user.phone}",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15.0,

              ),
            ),

          ],
        ),
      ],
    ),

  );
}
