import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  
  final Widget title;
  final Widget icon;
  const MyCard({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: 
        SizedBox(
          width: 150,
          height: 150,
          child: Stack(
            children: <Widget>[
              Container(
                width: 150,
                height: 150,
                color: Colors.white,
              ),
              Container(
                padding: const EdgeInsets.all(5.0),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: <Color>[
                      Colors.black.withAlpha(0),
                      Colors.black12,
                      Colors.black45
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                      title,
                      icon
                  ],

                )
              ),
            ],
          ),
        )        
    );
  }
}




