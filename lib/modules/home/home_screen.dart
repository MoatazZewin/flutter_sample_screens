import 'dart:ffi';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
        ),
        title: Text(
          "First App",
        ),
        actions: [
          IconButton(
            onPressed: () => print("hello form notifications"),
            icon: Icon(
              Icons.notifications,
            ),
          ),
          IconButton(
              onPressed: () => print("hello form search"),
              icon: Icon(
                Icons.search,
              )),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(50.0),
            child: Container(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image(image: NetworkImage(
                    'https://image.tmdb.org/t/p/w780/uDYJS3n69bAST4GHt7MN0zwczIy.jpg',
                  ),
                    height: 200.0,
                    width: 200.0,
                    fit: BoxFit.cover,
                  ),
                  Container(child: Text(
                      "greatness",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    textAlign: TextAlign.center,
                  ),
                    color: Colors.black.withOpacity(.5),
                    width: 200.0,
                    padding: EdgeInsetsDirectional.only(),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(20.0),
                ),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
            ),
          ),
        ],
      ),
    );
  }
}
