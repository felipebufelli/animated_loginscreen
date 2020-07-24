import 'package:animated_loginscreen/screens/home/widgets/list_data.dart';
import 'package:flutter/material.dart';

class AnimatedListView extends StatelessWidget {

  final Animation<EdgeInsets> listSlidePosition;

  AnimatedListView({@required this.listSlidePosition});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        ListData(
          title: "Estudar Flutter",
          subtitle: "Seção 25", 
          image: AssetImage("images/perfil.jpeg"), 
          margin: listSlidePosition.value *4, 
        ),
        ListData(
          title: "Estudar Flutter",
          subtitle: "Seção 24", 
          image: AssetImage("images/perfil.jpeg"), 
          margin: listSlidePosition.value *3, 
        ),
        ListData(
          title: "Estudar Flutter",
          subtitle: "Seção 23", 
          image: AssetImage("images/perfil.jpeg"), 
          margin: listSlidePosition.value *2, 
        ),
        ListData(
          title: "Estudar Flutter",
          subtitle: "Seção 22", 
          image: AssetImage("images/perfil.jpeg"), 
          margin: listSlidePosition.value *1, 
        ),
        ListData(
          title: "Estudar Dart",
          subtitle: "Curso do Daniel Ciolfi", 
          image: AssetImage("images/perfil.jpeg"), 
          margin: listSlidePosition.value *0, 
        )
      ],
    );
  }
}