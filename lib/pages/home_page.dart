import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height - 85,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(35),
              bottomRight: Radius.circular(35),
            )
          ),
          child: ListView(
            padding: const EdgeInsets.all(10.0),
            children: <Widget>[
              Container(
                child: ListTile(
                  title: Text('Товары'),
                  subtitle: Text('Их много'),
                  trailing: Icon(Icons.panorama_horizontal),
                ),
              ),
              Container(
                child: Text('Список карточек товаров'),
              ),
              Padding(padding: const EdgeInsets.all(10.0),
              child: Text('каталог')
              ),
              Container(
                child: Text('Каталоги'),
              )
            ],
          ),
        )
      ),
      // button
    );
  }
}
