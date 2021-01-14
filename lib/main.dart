import 'package:flutter/material.dart';

void main() {
/*Scfold can act as a wrapper for bottom bar, navigation drawer
* floating action button etc.*/
  runApp(MaterialApp(home: HomeStatelessWidget()));
}

/*Statless Widget-> State of the widget canot change over time*/
/*Stateful Widget-> State of the widget can change over time
* Hot Reload -> on saving the build get called  and changes are applied.
* */
class HomeStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[600],
        title: Text("Flutter Demo"),
        centerTitle: true,
      ),
      /*To nest widgets use child property*/
      body: Center(
        child:Image(
          image: NetworkImage('https://cdn.pixabay.com/photo/2020/10/22/20/08/great-spotted-woodpecker-5677069_1280.jpg'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("Sup"),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
