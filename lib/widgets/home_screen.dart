import 'package:flutter/material.dart';
import 'package:gameforchildren/constants/strings.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreen createState() => new _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title : Center(
          child: Text(
            homeTitle,
            style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold
            ),
          )
      ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.black
            ),
            onPressed: (){},
          )
        ],
    ),
      body: _listView(context),
    );
  }
  final List<String> images = <String>['assets/images/images.jpg', 'assets/images/fruits.jpg', 'assets/images/images.jpg'];
  final List<String> cardTitle = <String>["Жануарлар", "Жеміс-жидектер", "Математика"];
  Widget _listView(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: images.length+1,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Center(
              child: Text(
                homeBodyTitle,
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 30
                ),
              ),
            );
          } else {
            return _cardView(context, index);
          }
        });
  }

Card _cardView(BuildContext context, int index) {
    return Card (
      child: InkWell(
        onTap: (){
          print("object");
        },
        child: Column(
          children: <Widget>[
            Container(
              height: 250,
              child: Image.asset(images[index-1])
            ),
            Center(
              child:
              Text(
                cardTitle[index-1],
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold
                ),
              ),
            )
          ],
        ),
      ),
    );
}
}